.class public Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;
.super Ljava/lang/Object;
.source "GetProfileResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSncProfile()Lcom/android/email/syncnconnect/utils/SncProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setSncProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    return-void
.end method
