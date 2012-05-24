.class public abstract Landroid/app/enterprise/IWifiPolicy$Stub;
.super Landroid/os/Binder;
.source "IWifiPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IWifiPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IWifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IWifiPolicy"

.field static final TRANSACTION_addBlockedNetwork:I = 0x28

.field static final TRANSACTION_edmAddOrUpdate:I = 0x57

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x4a

.field static final TRANSACTION_getAllowUserProfiles:I = 0x48

.field static final TRANSACTION_getBlockedNetworks:I = 0x2a

.field static final TRANSACTION_getDHCPEnabled:I = 0x2d

.field static final TRANSACTION_getDefaultGateway:I = 0x31

.field static final TRANSACTION_getDefaultIp:I = 0x2f

.field static final TRANSACTION_getDefaultPrimaryDNS:I = 0x33

.field static final TRANSACTION_getDefaultSecondaryDNS:I = 0x35

.field static final TRANSACTION_getDefaultSubnetMask:I = 0x37

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x4e

.field static final TRANSACTION_getNetworkAllowDynamicTrustDecision:I = 0x27

.field static final TRANSACTION_getNetworkAnonymousIdValue:I = 0x24

.field static final TRANSACTION_getNetworkCaCertification:I = 0x1e

.field static final TRANSACTION_getNetworkClientCertificate:I = 0x1f

.field static final TRANSACTION_getNetworkCnMatchList:I = 0x25

.field static final TRANSACTION_getNetworkDHCPEnabled:I = 0x39

.field static final TRANSACTION_getNetworkEAPType:I = 0x1c

.field static final TRANSACTION_getNetworkFingerprintMatchList:I = 0x26

.field static final TRANSACTION_getNetworkGateway:I = 0x3d

.field static final TRANSACTION_getNetworkIdentityValue:I = 0x23

.field static final TRANSACTION_getNetworkIp:I = 0x3b

.field static final TRANSACTION_getNetworkLinkSecurity:I = 0x5

.field static final TRANSACTION_getNetworkPSK:I = 0x20

.field static final TRANSACTION_getNetworkPassword:I = 0x22

.field static final TRANSACTION_getNetworkPhase2:I = 0x1d

.field static final TRANSACTION_getNetworkPrimaryDNS:I = 0x3f

.field static final TRANSACTION_getNetworkPrivateKey:I = 0x21

.field static final TRANSACTION_getNetworkSSIDList:I = 0x2

.field static final TRANSACTION_getNetworkSecondaryDNS:I = 0x41

.field static final TRANSACTION_getNetworkSubnetMask:I = 0x43

.field static final TRANSACTION_getNetworkWEPKey1:I = 0xb

.field static final TRANSACTION_getNetworkWEPKey2:I = 0xc

.field static final TRANSACTION_getNetworkWEPKey3:I = 0xd

.field static final TRANSACTION_getNetworkWEPKey4:I = 0xe

.field static final TRANSACTION_getNetworkWEPKeyId:I = 0x1b

.field static final TRANSACTION_getPasswordHidden:I = 0x51

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x4c

.field static final TRANSACTION_getTlsCertificateSecurityLevel:I = 0x54

.field static final TRANSACTION_getWifiProfile:I = 0x56

.field static final TRANSACTION_isDynamicTrustDecisionAllowed:I = 0x1a

.field static final TRANSACTION_isEnterpriseNetwork:I = 0x52

.field static final TRANSACTION_isNetworkBlocked:I = 0x2b

.field static final TRANSACTION_isNetworkSecure:I = 0x4f

.field static final TRANSACTION_isWifiAllowed:I = 0x46

.field static final TRANSACTION_removeBlockedNetwork:I = 0x29

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x3

.field static final TRANSACTION_setAllowUserPolicyChanges:I = 0x49

.field static final TRANSACTION_setAllowUserProfiles:I = 0x47

.field static final TRANSACTION_setDHCPEnabled:I = 0x2c

.field static final TRANSACTION_setDefaultGateway:I = 0x30

.field static final TRANSACTION_setDefaultIp:I = 0x2e

.field static final TRANSACTION_setDefaultPrimaryDNS:I = 0x32

.field static final TRANSACTION_setDefaultSecondaryDNS:I = 0x34

.field static final TRANSACTION_setDefaultSubnetMask:I = 0x36

.field static final TRANSACTION_setMinimumRequiredSecurity:I = 0x4d

.field static final TRANSACTION_setNetworkAllowDynamicTrustDecision:I = 0x19

.field static final TRANSACTION_setNetworkAnonymousIdValue:I = 0x12

.field static final TRANSACTION_setNetworkCaCertificate:I = 0x15

.field static final TRANSACTION_setNetworkClientCertification:I = 0x14

.field static final TRANSACTION_setNetworkCnMatchList:I = 0x17

.field static final TRANSACTION_setNetworkDHCPEnabled:I = 0x38

.field static final TRANSACTION_setNetworkFingerprintMatchList:I = 0x18

.field static final TRANSACTION_setNetworkGateway:I = 0x3c

.field static final TRANSACTION_setNetworkIdentityValue:I = 0x11

.field static final TRANSACTION_setNetworkIp:I = 0x3a

.field static final TRANSACTION_setNetworkLinkSecurity:I = 0x4

.field static final TRANSACTION_setNetworkPSK:I = 0xf

.field static final TRANSACTION_setNetworkPassword:I = 0x10

.field static final TRANSACTION_setNetworkPhase2:I = 0x13

.field static final TRANSACTION_setNetworkPrimaryDNS:I = 0x3e

.field static final TRANSACTION_setNetworkPrivateKey:I = 0x16

.field static final TRANSACTION_setNetworkSSID:I = 0x1

.field static final TRANSACTION_setNetworkSecondaryDNS:I = 0x40

.field static final TRANSACTION_setNetworkSubnetMask:I = 0x42

.field static final TRANSACTION_setNetworkWEPKey1:I = 0x7

.field static final TRANSACTION_setNetworkWEPKey2:I = 0x8

.field static final TRANSACTION_setNetworkWEPKey3:I = 0x9

.field static final TRANSACTION_setNetworkWEPKey4:I = 0xa

.field static final TRANSACTION_setNetworkWEPKeyId:I = 0x6

.field static final TRANSACTION_setPasswordHidden:I = 0x50

.field static final TRANSACTION_setPromptCredentialsEnabled:I = 0x4b

.field static final TRANSACTION_setTlsCertificateSecurityLevel:I = 0x53

.field static final TRANSACTION_setWifi:I = 0x44

.field static final TRANSACTION_setWifiAllowed:I = 0x45

.field static final TRANSACTION_setWifiProfile:I = 0x55


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWifiPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.app.enterprise.IWifiPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/enterprise/IWifiPolicy;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/enterprise/IWifiPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_3
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_17
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkCnMatchList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_18
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkFingerprintMatchList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_19
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    move v1, v6

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkAllowDynamicTrustDecision(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_12

    move v5, v6

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_13
    move v1, v5

    goto :goto_1

    :sswitch_1a
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isDynamicTrustDecisionAllowed(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkWEPKeyId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1e
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_20
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_21
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_22
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_23
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_24
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_25
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkCnMatchList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_26
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkFingerprintMatchList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_27
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkAllowDynamicTrustDecision(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_28
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->addBlockedNetwork(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_29
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->removeBlockedNetwork(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_17

    move v5, v6

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2a
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_2b
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move v1, v6

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_19
    move v1, v5

    goto :goto_2

    :sswitch_2c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b

    move v0, v6

    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDHCPEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1a

    move v5, v6

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1b
    move v0, v5

    goto :goto_3

    :sswitch_2d
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDHCPEnabled()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1c

    move v5, v6

    :cond_1c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2e
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultIp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2f
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_30
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultGateway(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1e

    move v5, v6

    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_31
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultGateway()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_32
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultPrimaryDNS(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_33
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultPrimaryDNS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_34
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultSecondaryDNS(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_20

    move v5, v6

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_35
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultSecondaryDNS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_36
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setDefaultSubnetMask(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_37
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getDefaultSubnetMask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_38
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23

    move v1, v6

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkDHCPEnabled(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_22

    move v5, v6

    :cond_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_23
    move v1, v5

    goto :goto_4

    :sswitch_39
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkDHCPEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_24

    move v5, v6

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3a
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_25

    move v5, v6

    :cond_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3b
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_26

    move v5, v6

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3d
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3e
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3f
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_40
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_28

    move v5, v6

    :cond_28
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_41
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_42
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_43
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_44
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2b

    move v0, v6

    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifi(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2a

    move v5, v6

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2b
    move v0, v5

    goto :goto_5

    :sswitch_45
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2d

    move v0, v6

    :goto_6
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiAllowed(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2c

    move v5, v6

    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2d
    move v0, v5

    goto :goto_6

    :sswitch_46
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f

    move v0, v6

    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isWifiAllowed(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2e

    move v5, v6

    :cond_2e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2f
    move v0, v5

    goto :goto_7

    :sswitch_47
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_31

    move v0, v6

    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setAllowUserProfiles(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_30

    move v5, v6

    :cond_30
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_31
    move v0, v5

    goto :goto_8

    :sswitch_48
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_33

    move v0, v6

    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllowUserProfiles(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_32

    move v5, v6

    :cond_32
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_33
    move v0, v5

    goto :goto_9

    :sswitch_49
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_35

    move v0, v6

    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setAllowUserPolicyChanges(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_34

    move v5, v6

    :cond_34
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_35
    move v0, v5

    goto :goto_a

    :sswitch_4a
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getAllowUserPolicyChanges()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_36

    move v5, v6

    :cond_36
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_4b
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_38

    move v0, v6

    :goto_b
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setPromptCredentialsEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_37

    move v5, v6

    :cond_37
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_38
    move v0, v5

    goto :goto_b

    :sswitch_4c
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getPromptCredentialsEnabled()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_39

    move v5, v6

    :cond_39
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_4d
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setMinimumRequiredSecurity(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3a

    move v5, v6

    :cond_3a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_4e
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getMinimumRequiredSecurity()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_4f
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3c

    move v1, v6

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->isNetworkSecure(IZ)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3b

    move v5, v6

    :cond_3b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3c
    move v1, v5

    goto :goto_c

    :sswitch_50
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    move v0, v6

    :goto_d
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setPasswordHidden(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3d

    move v5, v6

    :cond_3d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3e
    move v0, v5

    goto :goto_d

    :sswitch_51
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getPasswordHidden()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3f

    move v5, v6

    :cond_3f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_52
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_40

    move v5, v6

    :cond_40
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_53
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setTlsCertificateSecurityLevel(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_41

    move v5, v6

    :cond_41
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_54
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getTlsCertificateSecurityLevel()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_55
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_43

    sget-object v7, Landroid/app/enterprise/WifiAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/WifiAdminProfile;

    :goto_e
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_42

    move v5, v6

    :cond_42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_43
    const/4 v0, 0x0

    goto :goto_e

    :sswitch_56
    const-string v7, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_44

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v6}, Landroid/app/enterprise/WifiAdminProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_44
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_57
    const-string v5, "android.app.enterprise.IWifiPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    sget-object v5, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IWifiPolicy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_45
    const/4 v0, 0x0

    goto :goto_f

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
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
