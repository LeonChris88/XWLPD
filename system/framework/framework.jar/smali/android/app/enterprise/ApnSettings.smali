.class public Landroid/app/enterprise/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apn:Ljava/lang/String;

.field public authType:I

.field public id:J

.field public mcc:Ljava/lang/String;

.field public mmsPort:Ljava/lang/String;

.field public mmsProxy:Ljava/lang/String;

.field public mmsc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public proxy:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/enterprise/ApnSettings$1;

    invoke-direct {v0}, Landroid/app/enterprise/ApnSettings$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/ApnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    iput v2, p0, Landroid/app/enterprise/ApnSettings;->port:I

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    iput v2, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    iput v2, p0, Landroid/app/enterprise/ApnSettings;->port:I

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    iput v2, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    invoke-virtual {p0, p1}, Landroid/app/enterprise/ApnSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/ApnSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/enterprise/ApnSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    iget v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    return-wide v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    return-void
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    return-void
.end method

.method public setAuthType(I)V
    .locals 0

    iput p1, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/enterprise/ApnSettings;->id:J

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Landroid/app/enterprise/ApnSettings;->port:I

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/app/enterprise/ApnSettings;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->apn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->proxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/enterprise/ApnSettings;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->mmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/enterprise/ApnSettings;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/enterprise/ApnSettings;->authType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
