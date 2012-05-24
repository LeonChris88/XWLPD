.class public Landroid/app/enterprise/VpnAdminProfile;
.super Ljava/lang/Object;
.source "VpnAdminProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/VpnAdminProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final VPN_TYPE_L2TP:Ljava/lang/String; = "L2TP"

.field public static final VPN_TYPE_L2TP_IPSEC_CRT:Ljava/lang/String; = "L2TP_IPSEC"

.field public static final VPN_TYPE_L2TP_IPSEC_PSK:Ljava/lang/String; = "L2TP_IPSEC_PSK"

.field public static final VPN_TYPE_PPTP:Ljava/lang/String; = "PPTP"


# instance fields
.field public IPSecCaCertificate:Ljava/lang/String;

.field public IPSecPreSharedKey:Ljava/lang/String;

.field public IPSecUserCertificate:Ljava/lang/String;

.field public L2TPSecret:Ljava/lang/String;

.field public L2TPSecretEnable:Z

.field public PPTPEncryptionEnable:Z

.field public profileName:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userPassword:Ljava/lang/String;

.field public vpnType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/enterprise/VpnAdminProfile$1;

    invoke-direct {v0}, Landroid/app/enterprise/VpnAdminProfile$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/VpnAdminProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v3, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/VpnAdminProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/enterprise/VpnAdminProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-boolean v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method
