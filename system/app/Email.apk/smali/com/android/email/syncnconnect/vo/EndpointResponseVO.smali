.class public Lcom/android/email/syncnconnect/vo/EndpointResponseVO;
.super Ljava/lang/Object;
.source "EndpointResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSncUserEndpoint()Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->mSncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    return-void
.end method
