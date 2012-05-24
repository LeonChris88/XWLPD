.class public Lcom/android/email/syncnconnect/SyncConnectImpl;
.super Ljava/lang/Object;
.source "SyncConnectImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/syncnconnect/SyncConnectImpl$SyncConnectCallback;
    }
.end annotation


# static fields
.field private static CLASS_NAME:Ljava/lang/String;

.field private static mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

.field private mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into SyncConnectImpl Constructor"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    iput-object p1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    return-void
.end method

.method private addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

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

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

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

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addGetProfileRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addGetTagsRequestOnQueue(Landroid/content/Context;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

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

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addGetTokenRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

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

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

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

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

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

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private addValidateTokenRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VALIDATE_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private getAvailableAccountsFromLocalStore(I)V
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const-string v6, "sncAvailableAccounts.xml"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getBytesFromStream(Ljava/io/FileInputStream;)[B

    move-result-object v0

    new-instance v4, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    invoke-static {v0, v4}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getEndpointList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetEndpointsRequestOnQueue(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "OK"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Local XML File not found, so calling VZW Server"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Token Expired, Refreshing the token"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_1
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v8}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private getBytesFromStream(Ljava/io/FileInputStream;)[B
    .locals 7

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x100

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_0
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq v4, v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getBytesFromStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/syncnconnect/SyncConnectImpl;
    .locals 1

    sget-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/SyncConnectImpl;

    invoke-direct {v0, p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mInstance:Lcom/android/email/syncnconnect/SyncConnectImpl;

    return-object v0
.end method

.method private getUserAccountsFromLocalStore(I)V
    .locals 9

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    :try_start_0
    const-string v4, "sncAvailableAccounts.xml"

    :goto_0
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getBytesFromStream(Ljava/io/FileInputStream;)[B

    move-result-object v0

    new-instance v3, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v3}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    invoke-static {v0, v3}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "OK"

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void

    :cond_0
    const-string v4, "sncUserAccounts.xml"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Local XML File not found, so calling VZW Server"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Token Expired, Refreshing the token"

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_1
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v6, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private isTokenExpired()Z
    .locals 9

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v7, "EXPIRY_DATE"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd/yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    sget-object v6, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsTokenExpired :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addGetEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addGetPINRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PIN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addProcessSMSRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->PROCESS_SMS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addRefreshTokenRequestOnQueue(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->REFRESH_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addUpdateEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

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

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into addUserAccount() method with providerName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "ProvisioningState"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    invoke-virtual {v1, p2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setProvider(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setAccountName(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetTokenRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Token Expired, Refreshing the token"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VERIFY_DEVICE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public deactivateSnCAccount(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DEACTIVATE_SNC:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mReqQueue:Lcom/android/email/syncnconnect/service/APIRequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/syncnconnect/service/SyncConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public deleteUserAccount(J)V
    .locals 5

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into deleteUserAccount() method with accountId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "ProvisioningState"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Token Expired, Refreshing the token"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAvailableAccounts()V
    .locals 4

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getAvailableAccounts() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v1

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetPINRequestOnQueue(Landroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Fetching from XML File"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getAvailableAccountsFromLocalStore(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getTags(J)V
    .locals 4

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Into getTags() method with accountId :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Token Expired, Refreshing the token"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUserConfiguredAccounts()V
    .locals 4

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserConfiguredAccounts() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetUserEndpointsRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Fetching from XML File"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->getUserAccountsFromLocalStore(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getUserProfile()V
    .locals 4

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserprofile() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Token Expired, Refreshing the token"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isUserRegistered()Z
    .locals 4

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into isUserRegistered() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isRegistered"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsUserRegistered :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    const/4 v7, -0x1

    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Into modifyUserAccount() method with accountId :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with accountName :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with displayName :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and password :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetailsFromId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserEndpoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f080587

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setDisplayName(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserEndpointId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "ProvisioningState"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v5, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Token Expired, Refreshing the token"

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_1
    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onGetPinSMSTimeout()V
    .locals 6

    const/4 v4, 0x0

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Into onGetPinSMSTimeout() method"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "isSMSExpected"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "validateToken"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is ValidateToken :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f080586

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public syncUserAccount(J)V
    .locals 5

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into syncUserAccount() method with accountId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "ProvisioningState"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v3, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Token Expired, Refreshing the token"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 4

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into updateUserprofile() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "ProvisioningState"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->validateToken()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addVerifyDeviceRequestOnQueue(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v2, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/syncnconnect/SyncConnectImpl;->isTokenExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Token Expired, Refreshing the token"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public validateToken()V
    .locals 3

    sget-object v1, Lcom/android/email/syncnconnect/SyncConnectImpl;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into validateToken() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "validateToken"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/email/syncnconnect/SyncConnectImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/SyncConnectImpl;->addValidateTokenRequestOnQueue(Landroid/content/Context;)V

    return-void
.end method
