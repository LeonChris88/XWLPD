.class public Landroid/app/enterprise/EnterpriseVpnConnection;
.super Ljava/lang/Object;
.source "EnterpriseVpnConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTERPRISE_VPN_MAX_HASH_SIZE:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "EnterpriseVpnConnection"


# instance fields
.field private certAuthMode:Ljava/lang/String;

.field public certCommonName:Ljava/lang/String;

.field public certHash:[B

.field public groupname:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/enterprise/EnterpriseVpnConnection$1;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseVpnConnection$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/EnterpriseVpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certAuthMode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certCommonName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->groupname:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCertAuthMode()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certAuthMode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final setCertAuthMode(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v2, "Automatic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Manual"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certAuthMode:Ljava/lang/String;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iput-object p1, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certAuthMode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certAuthMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certCommonName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->certHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->groupname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseVpnConnection;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
