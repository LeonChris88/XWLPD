.class public Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;
.super Ljava/lang/Object;
.source "ModifyProfileResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->mIsSuccess:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->mIsSuccess:Z

    return-void
.end method
