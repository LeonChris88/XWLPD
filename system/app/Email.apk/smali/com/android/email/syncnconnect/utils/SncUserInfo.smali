.class public Lcom/android/email/syncnconnect/utils/SncUserInfo;
.super Ljava/lang/Object;
.source "SncUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEndpointId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;

.field private mSncServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation
.end field

.field private mUserEndpointId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/syncnconnect/utils/SncUserInfo$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    sget-object v1, Lcom/android/email/syncnconnect/utils/SncService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndpointId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public final getSncServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    return-object v0
.end method

.method public final getUserEndpointId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public final setEndpointId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public final setSncServiceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    return-void
.end method

.method public final setUserEndpointId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncUserInfo;->mSncServiceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
