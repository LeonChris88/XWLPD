.class public Landroid/app/enterprise/WifiAdminProfile;
.super Ljava/lang/Object;
.source "WifiAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/WifiAdminProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public anonymousIdentity:Ljava/lang/String;

.field public caCertificate:Ljava/lang/String;

.field public clientCertification:Ljava/lang/String;

.field public cnMatchList:Ljava/lang/String;

.field public fingerprintMatchList:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public phase2:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;

.field public psk:Ljava/lang/String;

.field public security:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public staticGateway:Ljava/lang/String;

.field public staticIp:Ljava/lang/String;

.field public staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public staticPrimaryDns:Ljava/lang/String;

.field public staticSecondaryDns:Ljava/lang/String;

.field public staticSubnetMask:Ljava/lang/String;

.field public userIdentity:Ljava/lang/String;

.field public wepKey1:Ljava/lang/String;

.field public wepKey2:Ljava/lang/String;

.field public wepKey3:Ljava/lang/String;

.field public wepKey4:Ljava/lang/String;

.field public wepKeyId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$1;

    invoke-direct {v0}, Landroid/app/enterprise/WifiAdminProfile$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->valueOf(I)Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->valueOf(I)Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/WifiAdminProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/enterprise/WifiAdminProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public booleanToEnum(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->cnMatchList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->fingerprintMatchList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->allowDynamicTrust:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIpEnabled:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
