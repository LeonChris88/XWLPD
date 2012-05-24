.class public Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;
.super Ljava/lang/Object;
.source "DeleteEndpointResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mUserEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mUserEndpointList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getUserEndpointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mUserEndpointList:Ljava/util/List;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public final setUserEndpointList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->mUserEndpointList:Ljava/util/List;

    return-void
.end method
