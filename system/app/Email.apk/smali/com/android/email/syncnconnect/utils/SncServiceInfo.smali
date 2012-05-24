.class public Lcom/android/email/syncnconnect/utils/SncServiceInfo;
.super Ljava/lang/Object;
.source "SncServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJobId:Ljava/lang/String;

.field private mOperationId:Ljava/lang/String;

.field private mProviderId:Ljava/lang/String;

.field private mProviderSrvcDetailsId:Ljava/lang/String;

.field private mReqUserEmail:Ljava/lang/String;

.field private mReturnCode:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field private mSourceProviderId:Ljava/lang/String;

.field private mUserEndpointId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncServiceInfo$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setJobId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    return-void
.end method

.method public setOperationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    return-void
.end method

.method public setProviderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    return-void
.end method

.method public setProviderSrvcDetailsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    return-void
.end method

.method public setReqUserEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    return-void
.end method

.method public setReturnCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    return-void
.end method

.method public setSourceProviderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    return-void
.end method

.method public setUserEndpointId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mJobId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mOperationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mProviderSrvcDetailsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReqUserEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mReturnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mSourceProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->mUserEndpointId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
