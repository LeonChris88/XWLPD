.class public Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;
.super Ljava/lang/Object;
.source "SyncAllResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mSncServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->mSncServiceInfoList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSncServiceInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->mSncServiceInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setSncServiceInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncServiceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->mSncServiceInfoList:Ljava/util/List;

    return-void
.end method
