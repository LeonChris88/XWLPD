.class public Lcom/android/email/syncnconnect/service/PendingRequestQueue;
.super Ljava/lang/Object;
.source "PendingRequestQueue.java"


# static fields
.field private static mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;


# instance fields
.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/service/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/email/syncnconnect/service/PendingRequestQueue;
    .locals 1

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    return-object v0
.end method


# virtual methods
.method public final add(Lcom/android/email/syncnconnect/service/Request;)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addGetEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addGetProfileRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addGetTagsRequestOnQueue(Landroid/content/Context;J)V
    .locals 3

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addRefreshTokenRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->REFRESH_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addSyncAllRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ALL:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addUpdateEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 3

    sget-object v0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public final get()Lcom/android/email/syncnconnect/service/Request;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/email/syncnconnect/service/Request;

    move-object v1, v0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final get(I)Lcom/android/email/syncnconnect/service/Request;
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/email/syncnconnect/service/Request;

    move-object v1, v0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final length()I
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/service/Request;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->mRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
