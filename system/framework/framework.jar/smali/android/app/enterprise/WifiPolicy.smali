.class public Landroid/app/enterprise/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_DISABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.disable"

.field public static final ACTION_ENABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.enable"

.field public static final ACTION_LOCK_KEYSTORE:Ljava/lang/String; = "edm.intent.action.lock"

.field public static final CERTIFICATE_SECURITY_LEVEL_HIGH:I = 0x1

.field public static final CERTIFICATE_SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IWifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WifiPolicy"

    sput-object v0, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    return-void
.end method

.method public static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_9

    :cond_8
    move v0, v2

    :goto_1
    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public addBlockedNetwork(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->addBlockedNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "addBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API edmAddOrUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getAllowUserPolicyChanges()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getAllowUserProfiles(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getBlockedNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getBlockedNetworks - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDHCPEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDHCPEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultGateway()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultIp()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultIp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultPrimaryDNS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultSecondaryDNS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultSubnetMask()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getMinimumRequiredSecurity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getSupportedSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkAnonymousIdValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkCaCertification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkClientCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkDHCPEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with getNetworkDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkEAPType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Wi-Fi policy API getNetworkIdentityValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkLinkSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPhase2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSSIDList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKeyId(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKeyId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHidden()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getPasswordHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getPromptCredentialsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTlsCertificateSecurityLevel()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getTlsCertificateSecurityLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getTlsCertificateSecurityLevel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getWifiProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API isEnterpriseNetwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isNetworkBlocked - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->isNetworkSecure(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isNetworkSecure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiAllowed(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->isWifiAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeBlockedNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API removeNetworkConfiguration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setAllowUserPolicyChanges(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowUserProfiles(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setAllowUserProfiles(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDHCPEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDHCPEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultGateway(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultIp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultPrimaryDNS(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultSecondaryDNS(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultSubnetMask(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMinimumRequiredSecurity(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setMinimumRequiredSecurity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setMinimumRequiredSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkAnonymousIdValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkClientCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkClientCertification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setNetworkDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkIdentityValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkLinkSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPSK"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPhase2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKeyId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordHidden(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setPasswordHidden(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setPromptCredentialsEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setTlsCertificateSecurityLevel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setTlsCertificateSecurityLevel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifi(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiAllowed(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifiAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setWifiProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
