.class public Lcom/android/email/syncnconnect/utils/SncProfile;
.super Ljava/lang/Object;
.source "SncProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExchangeABSyncFlag:Z

.field private mExchangeCalSyncFlag:Z

.field private mExchangeDaysToSync:I

.field private mExchangeDomain:Ljava/lang/String;

.field private mExchangeDownloadPastEmail:Ljava/lang/String;

.field private mExchangeEmail:Ljava/lang/String;

.field private mExchangeFetchFreq:I

.field private mExchangeIncludeFileAttachment:Ljava/lang/String;

.field private mExchangeMailSize:Ljava/lang/String;

.field private mExchangeMailSyncFlag:Z

.field private mExchangeMessageFormat:Ljava/lang/String;

.field private mExchangeNickName:Ljava/lang/String;

.field private mExchangeSecureFlag:Z

.field private mExchangeServer:Ljava/lang/String;

.field private mExchangeUpdateSchedule:Ljava/lang/String;

.field private mExchangeUser:Ljava/lang/String;

.field private mExchangeVerifyCertFlag:Z

.field private mFirstName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mSncPushNotificationEndDate:Ljava/lang/String;

.field private mSncPushNotificationStartDate:Ljava/lang/String;

.field private mSncSyncNotificationEndTime:I

.field private mSncSyncNotificationStartTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/syncnconnect/utils/SncProfile$1;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncProfile$1;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SncProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    iput v2, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExchangeABSyncFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    return v0
.end method

.method public getExchangeCalSyncFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    return v0
.end method

.method public getExchangeDaysToSync()I
    .locals 1

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    return v0
.end method

.method public getExchangeDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeDownloadPastEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeFetchFreq()I
    .locals 1

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    return v0
.end method

.method public getExchangeIncludeFileAttachment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeMailSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeMailSyncFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    return v0
.end method

.method public getExchangeMessageFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeSecureFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    return v0
.end method

.method public getExchangeServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeUpdateSchedule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    return-object v0
.end method

.method public getExchangeVerifyCertFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    return v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getSncPushNotificationEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSncPushNotificationStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSncSyncNotificationEndTime()I
    .locals 1

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    return v0
.end method

.method public getSncSyncNotificationStartTime()I
    .locals 1

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    return v0
.end method

.method public setExchangeABSyncFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeABSyncFlag:Z

    return-void
.end method

.method public setExchangeCalSyncFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeCalSyncFlag:Z

    return-void
.end method

.method public setExchangeDaysToSync(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    return-void
.end method

.method public setExchangeDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    return-void
.end method

.method public setExchangeDownloadPastEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    return-void
.end method

.method public setExchangeEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    return-void
.end method

.method public setExchangeFetchFreq(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    return-void
.end method

.method public setExchangeIncludeFileAttachment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    return-void
.end method

.method public setExchangeMailSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    return-void
.end method

.method public setExchangeMailSyncFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSyncFlag:Z

    return-void
.end method

.method public setExchangeMessageFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    return-void
.end method

.method public setExchangeNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    return-void
.end method

.method public setExchangeSecureFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeSecureFlag:Z

    return-void
.end method

.method public setExchangeServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    return-void
.end method

.method public setExchangeUpdateSchedule(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    return-void
.end method

.method public setExchangeUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    return-void
.end method

.method public setExchangeVerifyCertFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeVerifyCertFlag:Z

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    return-void
.end method

.method public setSncPushNotificationEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    return-void
.end method

.method public setSncPushNotificationStartDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    return-void
.end method

.method public setSncSyncNotificationEndTime(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    return-void
.end method

.method public setSncSyncNotificationStartTime(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDaysToSync:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeFetchFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMailSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeMessageFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeUpdateSchedule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeDownloadPastEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mExchangeIncludeFileAttachment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationStartDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncPushNotificationEndDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationStartTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/email/syncnconnect/utils/SncProfile;->mSncSyncNotificationEndTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
