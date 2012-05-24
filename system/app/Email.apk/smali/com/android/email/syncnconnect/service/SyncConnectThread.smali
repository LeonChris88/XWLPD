.class public Lcom/android/email/syncnconnect/service/SyncConnectThread;
.super Ljava/lang/Thread;
.source "SyncConnectThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/syncnconnect/service/SyncConnectThread$1;
    }
.end annotation


# static fields
.field private static CLASS_NAME:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

.field private mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

.field private mRetryCount:I

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into SyncConnectThread Constructor"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->getInstance()Lcom/android/email/syncnconnect/http/HttpClientManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->setHttpClient()V

    :cond_0
    iput-object p1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "snc_settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    return-void
.end method

.method private addEndpoint(Landroid/os/Bundle;)V
    .locals 14

    const-wide/16 v3, -0x1

    const v11, 0x7f080587

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Into addEndpoint() method"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "MDN is NULL or empty"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080581

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "AUTH_TOKEN"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getToken(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Error in getting userInfo"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "cancelOperation"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080582

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetailsFromProviderName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v7

    if-nez v7, :cond_4

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Endpoint does not exists"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<ns2:sncEndpoint xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getEndpointId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" email=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" password=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" accountName=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getAccountName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" displayName=\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\">"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getSncServiceList()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "</ns2:sncEndpoint>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "Authorization"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sncBasic3 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v5, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v11, "/snc/user/authThree/endpoints"

    invoke-virtual {v5, v7, v11, v10}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    :try_start_1
    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    :try_start_2
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "cancelOperation"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    :try_start_3
    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_d

    new-instance v6, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    invoke-direct {v6}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;-><init>()V

    invoke-virtual {v10}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v10

    invoke-static {v10, v6}, Lcom/android/email/syncnconnect/xml/ParserUtil;->endpointResponseXML([BLcom/android/email/syncnconnect/vo/EndpointResponseVO;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v8, 0x7f080588

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    move-object v0, v6

    move v6, v7

    :goto_1
    const/16 v7, 0x191

    if-ne v6, v7, :cond_a

    :try_start_4
    iget v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v7, :cond_a

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v7}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    :goto_2
    invoke-virtual {v7, p1}, Lcom/android/email/syncnconnect/service/Request;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v7, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v7}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_5
    :goto_3
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_6
    const/16 v10, 0xc9

    if-ne v7, v10, :cond_c

    :try_start_5
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getSncUserEndpoint()Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v7

    if-nez v7, :cond_7

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Error in getting userEndpoint Info"

    invoke-static {v0, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v10, 0x7f080587

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_7
    :try_start_6
    iget-object v8, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    if-nez v1, :cond_8

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->createAccount(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)J

    move-result-wide v3

    invoke-direct {p0, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    move-object v0, v6

    move v6, v2

    goto/16 :goto_1

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v8, "UserInfo"

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteEndpoint(Landroid/os/Bundle;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v0, v6

    move v6, v2

    goto/16 :goto_1

    :cond_9
    :try_start_7
    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v7, v0}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result-object v0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v6, v0, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    :cond_a
    if-eqz v0, :cond_5

    :try_start_9
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "error_code"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "error_text"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v5

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v5, v6

    move v6, v1

    move v1, v2

    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "Error in sending Request"

    invoke-static {v0, v7}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cancelOperation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v6

    move v6, v1

    move v1, v2

    :goto_7
    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v6, v5, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "cancelOperation"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    throw v0

    :catchall_1
    move-exception v0

    move v1, v2

    move-object v5, v6

    move v6, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    move v1, v2

    move v6, v7

    goto :goto_7

    :catchall_3
    move-exception v0

    move v6, v7

    goto :goto_7

    :catchall_4
    move-exception v0

    move v6, v2

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move v1, v2

    move-object v5, v6

    move v6, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move v1, v2

    move v6, v7

    goto :goto_6

    :catch_4
    move-exception v0

    move v6, v7

    goto :goto_6

    :catch_5
    move-exception v0

    move v6, v2

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v5, v6

    move v6, v1

    move v1, v2

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move v1, v2

    move-object v5, v6

    move v6, v7

    goto/16 :goto_5

    :catch_9
    move-exception v0

    move v1, v2

    move v6, v7

    goto/16 :goto_5

    :catch_a
    move-exception v0

    move v6, v7

    goto/16 :goto_5

    :catch_b
    move-exception v0

    move v6, v2

    goto/16 :goto_5

    :cond_c
    move-object v0, v6

    move v6, v7

    goto/16 :goto_1

    :cond_d
    move-object v0, v6

    move v6, v7

    goto/16 :goto_1

    :cond_e
    move-object v5, v6

    move v6, v1

    move v1, v2

    goto/16 :goto_3
.end method

.method private addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "snc_accounts_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V
    .locals 11

    const/4 v0, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v3, "sncUserAccounts.xml"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "ns2:sncUserEndpoints"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "sncUserEndpoint"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v1, "userName"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userEndpointId"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "endpointId"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayOrder"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayOrder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountName"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayName"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "defaultFlag"

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDefaultFlag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v6

    const-string v1, "provider"

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sncServices"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v2, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncService;

    const-string v1, "sncService"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    const-string v1, "serviceId"

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "isNotified"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getIsNotified()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v3, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sncUserAccounts.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_8

    :goto_2
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Local XML File not found, so calling VZW Server"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "sncUserAccounts.xml"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    invoke-direct {p0, p1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_2

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto/16 :goto_0
.end method

.method private checkToken()V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    sget-object v7, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "Into checkToken() method"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "validateToken"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sget-object v7, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is ValidateToken :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncHostAuth(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    :cond_2
    sget-object v7, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring Token with Username :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v3, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v3}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v7, "UserInfo"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getToken(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v8, 0x7f080582

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    iget-object v7, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v8, 0x7f080584

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private convertBoolToString(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "Y"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    goto :goto_0
.end method

.method private convertIntToTime(I)Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    div-int/lit16 v1, p1, 0xe10

    rem-int/lit16 v0, p1, 0xe10

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v3, v0, 0x3c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v1, v5, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v2, v5, :cond_1

    const-string v0, "0"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v3, v5, :cond_2

    const-string v0, "0"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method private deactivateSnc()V
    .locals 5

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into deactivateSnc() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "ProvisioningState"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting Account with userEndpointID :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sncAvailableAccounts.xml"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sncUserAccounts.xml"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "snc_accounts_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeactivateSncCallback()V

    return-void
.end method

.method private deleteEndpoint(Landroid/os/Bundle;Z)V
    .locals 11

    const/4 v1, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into deleteEndpoint() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080581

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "AUTH_TOKEN"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "UserInfo"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in getting userInfo"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080582

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/snc/user/authThree/endpoints/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "Authorization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sncBasic3 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v0, v6, v7}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpDeleteRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

    invoke-direct {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;-><init>()V

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/email/syncnconnect/xml/ParserUtil;->deleteEndpointResponseXML([BLcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v7, 0x7f080589

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    const/16 v0, 0x191

    if-ne v2, v0, :cond_6

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v5}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addDeleteEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v5, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v5}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_2
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_3

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v0

    sget-object v7, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-direct {p0, v0, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "error_code"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "error_text"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Error in sending Request"

    invoke-static {v0, v5}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-nez p2, :cond_7

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    :cond_7
    throw v0
.end method

.method private deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;",
            "Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAllSncAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account UUID :: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserEndpointId :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)J

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->removeFromUserEndpointXML(Ljava/lang/String;)V

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {p2, v1}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountFromPortalCallback(JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private flushPendingRequestQueue()V
    .locals 5

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Into flushPendingRequestQueue() method with queueLength :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting the Request :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->get()Lcom/android/email/syncnconnect/service/Request;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v3

    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->processRequest(Lcom/android/email/syncnconnect/service/Request;)V

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    goto :goto_1

    :cond_2
    return-void
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

    sget-object v4, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

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

.method private getEndpoints()V
    .locals 17

    sget-object v14, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "Into getEndpoints() method"

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "MDN is NULL or empty"

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v16, 0x7f080581

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v9, v15, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v15, "AUTH_TOKEN"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v14, "Authorization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sncBasic3 "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v15, "/snc/user/authThree/masterEndpoints"

    invoke-virtual {v14, v15, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_1

    new-instance v11, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v15, 0x7f080587

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_1
    :goto_1
    const/16 v14, 0x191

    if-ne v9, v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetEndpointsRequestOnQueue(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v14

    sget-object v15, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v14, v15}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_3
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    :goto_3
    invoke-virtual {v14, v9, v10, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    const/16 v14, 0xc8

    if-ne v9, v14, :cond_1

    const/4 v9, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v15, "sncAvailableAccounts.xml"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getEndpointList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_5
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "error_code"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "error_text"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_2

    :catch_0
    move-exception v12

    :try_start_2
    invoke-virtual {v12}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v14, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v15, "Error in sending Request"

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_7
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v14

    goto :goto_3

    :catchall_0
    move-exception v14

    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_8
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v15

    invoke-virtual {v15, v9, v10, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    throw v14
.end method

.method private getServiceList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v2, ""

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/syncnconnect/utils/SncService;

    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding Service :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<sncService serviceId=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SncService;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<sncServices>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</sncServices>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getToken(Landroid/os/Bundle;)V
    .locals 36

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Into getToken() method"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, -0x1

    const/4 v14, -0x1

    const/16 v24, 0x0

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "MDN is NULL or empty"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v17, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f080581

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "PIN_KEY"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ":"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string v31, "Authorization"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sncBasic2 "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v31, "UserInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    if-nez v29, :cond_2

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Error in getting the UserInfo"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f080582

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getProvider()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetailsFromProviderName(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v12

    if-nez v12, :cond_3

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Endpoint does not exists"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    const/16 v32, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f080587

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    const-wide/16 v34, -0x1

    invoke-virtual/range {v31 .. v35}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    const/16 v28, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "sncAvailableAccounts.xml"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getBytesFromStream(Ljava/io/FileInputStream;)[B

    move-result-object v7

    new-instance v21, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct/range {v21 .. v21}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    move-object/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual/range {v27 .. v27}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    invoke-virtual/range {v27 .. v27}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    :cond_5
    :goto_1
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<sncGetToken xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getEndpointId()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    if-eqz v28, :cond_6

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" userEndpointId=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    :cond_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" email=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" password=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" accountName=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getAccountName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\" displayName=\""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\">"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getSncServiceList()Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "</sncGetToken>"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    const-string v33, "/snc/user/authTwo/getToken"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v22

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v23

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v24

    move/from16 v14, v23

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_7

    new-instance v25, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;

    invoke-direct/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;-><init>()V

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getTokenResponseXML([BLcom/android/email/syncnconnect/vo/GetTokenResponseVO;)Z

    move-result v6

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f080583

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_7
    :goto_2
    const/16 v31, 0x191

    move/from16 v0, v31

    if-ne v14, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-lez v31, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getLastAPIExecuted()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v31

    sget-object v32, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addAddEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    :cond_8
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Retry Count :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v17, :cond_19

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    :goto_4
    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_a
    const/16 v31, 0xc9

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    const/16 v23, 0x0

    :try_start_2
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Token :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Expiry Date :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->updateSncHostAuthEntries(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v31, "AUTH_TOKEN"

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "EXPIRY_DATE"

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v31, "ProvisioningState"

    const/16 v32, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v31, "status_code"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    const-string v31, "status_text"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAccountIdFromEmailId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    goto/16 :goto_2

    :cond_c
    if-eqz v25, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v31

    if-eqz v31, :cond_9

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "error_code"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v25 .. v25}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v31

    const-string v32, "error_text"

    invoke-virtual/range {v31 .. v32}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    goto/16 :goto_3

    :catch_1
    move-exception v26

    :try_start_3
    invoke-virtual/range {v26 .. v26}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Retry Count :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v17, :cond_11

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto/16 :goto_4

    :catch_2
    move-exception v8

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Error in sending Request"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v31, v0

    const-string v32, "validateToken"

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Is ValidateToken :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Retry Count :: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v17, :cond_15

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto/16 :goto_4

    :catchall_0
    move-exception v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v32, v0

    const-string v33, "validateToken"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    sget-object v32, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Is ValidateToken :: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v32, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Retry Count :: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v17, :cond_d

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    :goto_5
    throw v31

    :cond_d
    const/16 v32, 0xc9

    move/from16 v0, v32

    if-ne v14, v0, :cond_f

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    :cond_e
    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendValidateTokenCallback(ILjava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v32, v0

    if-ltz v32, :cond_10

    const/16 v32, 0x191

    move/from16 v0, v32

    if-eq v14, v0, :cond_e

    if-eqz v23, :cond_e

    :cond_10
    sget-object v32, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v33, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v32 .. v33}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_6

    :cond_11
    const/16 v31, 0xc9

    move/from16 v0, v31

    if-ne v14, v0, :cond_13

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    :cond_12
    :goto_7
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    :goto_8
    move-object/from16 v0, v31

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendValidateTokenCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_14

    const/16 v31, 0x191

    move/from16 v0, v31

    if-eq v14, v0, :cond_12

    if-eqz v23, :cond_12

    :cond_14
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_7

    :cond_15
    const/16 v31, 0xc9

    move/from16 v0, v31

    if-ne v14, v0, :cond_17

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    :cond_16
    :goto_9
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_18

    const/16 v31, 0x191

    move/from16 v0, v31

    if-eq v14, v0, :cond_16

    if-eqz v23, :cond_16

    :cond_18
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_9

    :cond_19
    const/16 v31, 0xc9

    move/from16 v0, v31

    if-ne v14, v0, :cond_1b

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->flushPendingRequestQueue()V

    :cond_1a
    :goto_a
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v31

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_1c

    const/16 v31, 0x191

    move/from16 v0, v31

    if-eq v14, v0, :cond_1a

    if-eqz v23, :cond_1a

    :cond_1c
    sget-object v31, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v32, "Sending ErrorCallback for GetToken API"

    invoke-static/range {v31 .. v32}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_a
.end method

.method private getUserEndpoints(Z)Landroid/os/Bundle;
    .locals 10

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserEndpoints() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sncBasic3 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v5, "/snc/user/authThree/endpoints"

    invoke-virtual {v1, v5, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_8

    new-instance v5, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080587

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    move-object v1, v0

    move-object v0, v5

    :goto_1
    const/16 v4, 0x191

    if-ne v3, v4, :cond_4

    :try_start_3
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_4

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    new-instance v0, Lcom/android/email/syncnconnect/service/Request;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/service/Request;-><init>()V

    if-eqz p1, :cond_3

    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    :goto_2
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v4, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->add(Lcom/android/email/syncnconnect/service/Request;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v0, v2

    move-object v2, v1

    move v1, v3

    :goto_3
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    :goto_4
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "status_code"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "status_text"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xc8

    if-ne v3, v6, :cond_7

    :try_start_4
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v6, "sncUserAccounts.xml"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateAccountDatabase(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v0, v5

    move v3, v4

    goto :goto_1

    :cond_3
    :try_start_6
    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/Request;->setType(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v4, v5}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v1

    move v1, v3

    move-object v3, v2

    move-object v2, v8

    :goto_6
    :try_start_7
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result-object v0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    move v1, v3

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v8, v1

    move v1, v2

    move-object v2, v8

    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    move v3, v2

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_8
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_8

    :catchall_3
    move-exception v1

    move v3, v4

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_8

    :catchall_4
    move-exception v0

    move v3, v4

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v8

    goto :goto_8

    :catchall_7
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    move-object v9, v3

    move v3, v1

    move-object v1, v9

    goto :goto_8

    :catch_2
    move-exception v1

    move-object v2, v1

    move v1, v3

    move-object v3, v0

    goto :goto_7

    :catch_3
    move-exception v1

    move-object v8, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v8

    goto :goto_7

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v4

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v3, v1

    move v1, v4

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_7

    :catch_7
    move-exception v1

    move-object v3, v0

    move-object v8, v0

    move-object v0, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_6

    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v8, v1

    move v1, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_6

    :catch_9
    move-exception v1

    move-object v8, v1

    move v1, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v8

    goto/16 :goto_6

    :catch_a
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    move v1, v4

    goto/16 :goto_6

    :catch_b
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move v1, v4

    goto/16 :goto_6

    :cond_6
    move-object v0, v2

    move-object v2, v1

    move v1, v3

    goto/16 :goto_3

    :cond_7
    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    move v1, v2

    move-object v2, v0

    goto/16 :goto_3
.end method

.method private getUserProfile()V
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into getUserProfile() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sncBasic3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v4, "/snc/user/authThree/provisioning/profile"

    invoke-virtual {v0, v4, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v2

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_7

    new-instance v0, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;-><init>()V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getProfileResponseXML([BLcom/android/email/syncnconnect/vo/GetProfileResponseVO;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080583

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    :goto_1
    const/16 v4, 0x191

    if-ne v3, v4, :cond_4

    :try_start_2
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_4

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetProfileRequestOnQueue(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_6

    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getSncProfile()Lcom/android/email/syncnconnect/utils/SncProfile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    move-object v2, v3

    move v3, v4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v3, v1

    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_5
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move v2, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v2

    move v2, v4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move v2, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    move v2, v4

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v7, v2

    move v2, v3

    move-object v3, v7

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v3

    move v3, v4

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v1, v2

    move-object v2, v3

    move v3, v4

    goto/16 :goto_1

    :cond_6
    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    move-object v7, v3

    move v3, v2

    move-object v2, v7

    goto/16 :goto_1

    :cond_8
    move v3, v2

    move-object v2, v1

    goto/16 :goto_2
.end method

.method private isEmptyString(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private modifyEndpoint(Landroid/os/Bundle;)V
    .locals 10

    const/4 v2, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into modifyEndpoint() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080581

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "AUTH_TOKEN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in getting userInfo"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080582

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<ns2:sncEndpoint xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getEndpointId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" email=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" userEndpointId=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getUserEndpointId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" password=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" modifyPassword=\"true"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" accountName=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" displayName=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " >"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getSncServiceList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "</ns2:sncEndpoint>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sncBasic3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v6, "/snc/user/authThree/endpoints"

    invoke-virtual {v4, v1, v6, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPutRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v3

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_8

    new-instance v4, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;

    invoke-direct {v4}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;-><init>()V

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/email/syncnconnect/xml/ParserUtil;->endpointResponseXML([BLcom/android/email/syncnconnect/vo/EndpointResponseVO;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f08058a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move v2, v3

    move-object v3, v4

    :goto_1
    const/16 v4, 0x191

    if-ne v2, v4, :cond_6

    :try_start_2
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_6

    iget v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addModifyEndpointRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserInfo;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v3}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_7

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getSncUserEndpoint()Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->removeFromUserEndpointXML(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToUserEndpointXML(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addToCredentialPreferences(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v3, v4

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/EndpointResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Error in sending Request"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move v2, v3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move v2, v3

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_7
    move v2, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_8
    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    move v2, v3

    goto/16 :goto_2
.end method

.method private modifyProfile(Landroid/os/Bundle;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into modifyProfile() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080581

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncProfile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUser()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in getting userInfo"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v2, 0x7f080582

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<sncUpdateProfile><sncProfile><firstName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</firstName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<lastName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</lastName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<sncPushNotification "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationStartDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationStartDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationEndDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "startDate=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationStartDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" endDate=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncPushNotificationEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/><sncSyncNotification "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationStartTime()I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationEndTime()I

    move-result v4

    if-eq v4, v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "startTime=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationStartTime()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertIntToTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" endTime=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getSncSyncNotificationEndTime()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertIntToTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/><sncExchangeInfo><exchangeDomain>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeDomain>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeUser>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeUser>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeServer>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeServer>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeNickName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeNickName>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeMailSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeMailSyncFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeMailSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeABSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeABSyncFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeABSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeCalSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeCalSyncFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeCalSyncFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeSecureFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeSecureFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeSecureFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeVerifyCertFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeVerifyCertFlag()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->convertBoolToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeVerifyCertFlag>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeDaysToSync>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDaysToSync()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeDaysToSync>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeFetchFreq>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeFetchFreq()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeFetchFreq>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeMailSize>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeMailSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeMailSize>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeMessageFormat>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeMessageFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeMessageFormat>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeUpdateSchedule>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeUpdateSchedule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeUpdateSchedule>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeDownloadPastEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeDownloadPastEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeDownloadPastEmail>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<exchangeIncludeFileAttachment>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;->getExchangeIncludeFileAttachment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</exchangeIncludeFileAttachment>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</sncExchangeInfo>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<sncOutOfOffice/>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</sncProfile>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</sncUpdateProfile>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "AUTH_TOKEN"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sncBasic3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v6, "/snc/user/authThree/provisioning/profile"

    invoke-virtual {v4, v1, v6, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_8

    new-instance v2, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;

    invoke-direct {v2}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;-><init>()V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/email/syncnconnect/xml/ParserUtil;->modifyProfileResponseXML([BLcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080583

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v9, v2

    move v2, v3

    move-object v3, v9

    :goto_1
    const/16 v4, 0x191

    if-ne v2, v4, :cond_7

    :try_start_2
    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_7

    iget v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateProfileRequestOnQueue(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v3}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_5

    :try_start_3
    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error_text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Error in sending Request"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move v2, v3

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendUpdateProfileCallback(ILjava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move v2, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move v2, v3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move v2, v3

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_8
    move-object v9, v2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_1

    :cond_9
    move-object v1, v2

    move v2, v3

    goto :goto_2
.end method

.method private processRequest(Lcom/android/email/syncnconnect/service/Request;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Into ProcessRequest with request :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v0

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VALIDATE_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v0

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->PROCESS_SMS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    :cond_0
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread$1;->$SwitchMap$com$android$email$syncnconnect$utils$SyncConnectConstants$APIRequestType:[I

    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->verifyDevice()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getToken(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getEndpoints()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserEndpoints(Z)Landroid/os/Bundle;

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->addEndpoint(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->modifyEndpoint(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteEndpoint(Landroid/os/Bundle;Z)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->refreshToken()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getTags(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->syncAll()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->syncUserAccount(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getUserProfile()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->modifyProfile(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p1}, Lcom/android/email/syncnconnect/service/Request;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateEndpointsDb(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deactivateSnc()V

    goto :goto_0

    :pswitch_11
    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private refreshToken()V
    .locals 5

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into refreshToken() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "AUTH_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sncBasic3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v2, "/snc/user/authThree/refreshToken"

    invoke-virtual {v0, v2, v1}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;

    invoke-direct {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;-><init>()V

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getTokenResponseXML([BLcom/android/email/syncnconnect/vo/GetTokenResponseVO;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expiry Date :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "AUTH_TOKEN"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "EXPIRY_DATE"

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->getExpiryDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addRefreshTokenRequestOnQueue(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in sending Request"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private removeFromUserEndpointXML(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v2, "sncUserAccounts.xml"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v0, "sncUserEndpoint"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "userEndpointId"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sncUserAccounts.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestPIN()V
    .locals 14

    const/16 v13, 0xc8

    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Into requestPIN() method"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "MDN is NULL or empty"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v11, 0x7f080581

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v6, v10}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sncBasic1 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v11, "/snc/user/authOne/getPIN"

    invoke-virtual {v10, v11, v4}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_3

    new-instance v8, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;

    invoke-direct {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;-><init>()V

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v10

    invoke-static {v10, v8}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getPINResponseXML([BLcom/android/email/syncnconnect/vo/GetPINResponseVO;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v11, 0x7f080583

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_2
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Encrypted PIN :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getPIN()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v10

    if-ne v10, v13, :cond_4

    iget-object v10, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v10, "isSMSExpected"

    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean v10, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getPIN()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string v10, "PIN_KEY"

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getPIN()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v10, "ProvisioningState"

    const/4 v11, 0x1

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->verifyDevice()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    if-eq v6, v13, :cond_0

    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "error_code"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/vo/GetPINResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "error_text"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Response is NULL"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_2
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    if-eq v6, v13, :cond_0

    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Error in sending Request"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v6, v13, :cond_0

    sget-object v10, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v10, v11}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    if-eq v6, v13, :cond_6

    sget-object v11, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v12, "Sending ErrorCallback for RequestPIN API"

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    :cond_6
    throw v10
.end method

.method private sendErrorCallback(ILjava/lang/String;)V
    .locals 9

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Into sendErrorCallback with statusCode :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and statusString :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->length()I

    move-result v6

    sget-object v8, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->INVALID_REQUEST:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->get(I)Lcom/android/email/syncnconnect/service/Request;

    move-result-object v7

    if-nez v7, :cond_2

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "No request left in the PendingQueue"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getLastAPIExecuted()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v8

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ErrorCallback for RequestType :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread$1;->$SwitchMap$com$android$email$syncnconnect$utils$SyncConnectConstants$APIRequestType:[I

    invoke-virtual {v8}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->remove(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ErrorCallback for RequestType :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v8

    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-eq v8, v0, :cond_3

    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-ne v8, v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getLastAPIExecuted()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v8

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetConfiguredAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/android/email/syncnconnect/service/CallbackController;->sendDeleteAccountCallback(ILjava/lang/String;J)V

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_8
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto :goto_1

    :pswitch_9
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetProfileCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendModifyAccountCallback(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/syncnconnect/service/CallbackController;->sendValidateTokenCallback(ILjava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private setValidateToken(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "validateToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private final stopService()V
    .locals 2

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Stopping the Service"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->stopHttpClient()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private syncAll()V
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into syncAll() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sncBasic3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v4, "/snc/user/authThree/syncAll"

    invoke-virtual {v0, v4, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;-><init>()V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->syncAllResponseXML([BLcom/android/email/syncnconnect/vo/SyncAllResponseVO;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v5, 0x7f080583

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getSncServiceInfoList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/16 v4, 0x191

    if-ne v3, v4, :cond_1

    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v5, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAllRequestOnQueue(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v4

    sget-object v5, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ALL:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v4, v5}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAllCallback(ILjava/lang/String;Ljava/util/List;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move v3, v2

    move-object v2, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    move v3, v2

    move-object v2, v1

    goto :goto_2
.end method

.method private syncUserAccount(Landroid/os/Bundle;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into syncUserAccount() method"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "MDN is NULL or empty"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UserInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Error in getting userInfo"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080582

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getUserEndpointDetailsFromId(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/email/syncnconnect/utils/SncUserInfo;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/utils/SncUserInfo;-><init>()V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserEndpointId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setEndpointId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/email/syncnconnect/utils/SncUserInfo;->setSncServiceList(Ljava/util/List;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?> \n<ns2:sncEndpoint xmlns:ns2=\"http://vzws/snc/endpoints/request\" endpointId=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" email=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" userEndpointId=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getServiceList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</ns2:sncEndpoint>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sncBasic3 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v7, "/snc/user/authThree/syncAll"

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_7

    new-instance v5, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-direct {v5}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;-><init>()V

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/email/syncnconnect/xml/ParserUtil;->syncAllResponseXML([BLcom/android/email/syncnconnect/vo/SyncAllResponseVO;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v4, 0x7f080583

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v5

    :goto_1
    const/16 v4, 0x191

    if-ne v3, v4, :cond_5

    iget v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v4, :cond_5

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v4, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v6}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addSyncAccountRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v4, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v4}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_6

    :try_start_4
    invoke-virtual {v5}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getSncServiceInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v0

    move v3, v4

    move-object v0, v5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "error_text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_4
    :try_start_6
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "Error in sending Request"

    invoke-static {v0, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move v3, v2

    move-object v2, v1

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/email/syncnconnect/service/CallbackController;->sendSyncAccountCallback(ILjava/lang/String;Lcom/android/email/syncnconnect/utils/SncServiceInfo;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move v3, v4

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move v3, v4

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move v3, v4

    goto :goto_4

    :cond_6
    move-object v0, v5

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    move v3, v2

    move-object v2, v1

    goto/16 :goto_2
.end method

.method private updateAccountDatabase(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-static {v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncUserEndpoint(Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)V

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getAccountIdFromUserEndpointId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getEndpointId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getEndpointDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->printSncEndpoint(Lcom/android/email/syncnconnect/utils/SncEndpoint;)V

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->createAccount(Landroid/content/Context;Lcom/android/email/syncnconnect/utils/SncUserEndpoint;)J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateEndpointsDb(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "Into updateEndpointsDb() method"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UserInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Endpoint Operation is NULL"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "MDN is NULL or empty"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "AUTH_TOKEN"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sncBasic3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v4, "/snc/user/authThree/endpoints"

    invoke-virtual {v1, v4, v3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_6

    new-instance v4, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v5, "sncUserAccounts.xml"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operation :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ADD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateAccountDatabase(Ljava/util/List;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "Account added from web"

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendAddAccountCallback(ILjava/lang/String;J)V

    :cond_3
    :goto_1
    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addUpdateEndpointRequestOnQueue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-direct {p0, v1, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Error in sending Request"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v3, "MODIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "REFRESH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->updateAccountDatabase(Ljava/util/List;)V

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-direct {p0, v1, v3}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deleteFromAccountDatabase(Ljava/util/List;Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private validateToken()V
    .locals 2

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into validateToken() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V

    return-void
.end method

.method private verifyDevice()V
    .locals 21

    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Into verifyDevice() method"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "validateToken"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Is ValidateToken :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "MDN is NULL or empty"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f080581

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "PIN_KEY"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PIN :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v18, "Authorization"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sncBasic2 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    move-object/from16 v18, v0

    const-string v19, "/snc/user/authTwo/verifyDevice"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v13

    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2

    new-instance v16, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;

    invoke-direct/range {v16 .. v16}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/email/syncnconnect/xml/ParserUtil;->verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f080583

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    move-object/from16 v15, v16

    :cond_2
    :goto_1
    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->requestPIN()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_4
    if-nez v8, :cond_8

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v13, v0, :cond_6

    const/4 v13, 0x0

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getEndpointList()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v18, "ProvisioningState"

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "isRegistered"

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->isRegistered()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "sncAvailableAccounts.xml"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    invoke-virtual {v12}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->checkToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    move-object/from16 v15, v16

    goto/16 :goto_1

    :cond_7
    if-eqz v15, :cond_3

    :try_start_4
    invoke-virtual {v15}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual {v15}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "error_code"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v15}, Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "error_text"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v14

    goto/16 :goto_2

    :cond_8
    if-eqz v13, :cond_0

    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-gez v18, :cond_0

    :cond_9
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v17

    :goto_3
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    if-eqz v6, :cond_a

    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_a
    if-nez v8, :cond_b

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v13, :cond_0

    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-gez v18, :cond_0

    :cond_c
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Error in sending Request"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_d

    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_d
    if-nez v8, :cond_e

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v13, :cond_0

    const/16 v18, 0x191

    move/from16 v0, v18

    if-ne v13, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v18, v0

    if-gez v18, :cond_0

    :cond_f
    sget-object v18, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v19, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v18 .. v19}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v6, :cond_10

    invoke-static {v6}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->organizeEndpointList(Ljava/util/List;)V

    :cond_10
    if-nez v8, :cond_12

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v14, v6}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetAvailableAccountsCallback(ILjava/lang/String;Ljava/util/List;)V

    :cond_11
    :goto_6
    throw v18

    :cond_12
    if-eqz v13, :cond_11

    const/16 v19, 0x191

    move/from16 v0, v19

    if-ne v13, v0, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    move/from16 v19, v0

    if-gez v19, :cond_11

    :cond_13
    sget-object v19, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v20, "Sending ErrorCallback for VerifyDevice API"

    invoke-static/range {v19 .. v20}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->sendErrorCallback(ILjava/lang/String;)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->setValidateToken(Z)V

    goto :goto_6

    :catchall_1
    move-exception v18

    move-object/from16 v15, v16

    goto :goto_5

    :catch_2
    move-exception v3

    move-object/from16 v15, v16

    goto/16 :goto_4

    :catch_3
    move-exception v17

    move-object/from16 v15, v16

    goto/16 :goto_3
.end method


# virtual methods
.method public getMDN()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/email/Email;->SNC_DEBUG_DEV:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getTestMDN()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "MDN"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cached MDN :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SIM Card is Changed"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deactivateSnc()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MDN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SIM Card is removed"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->deactivateSnc()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getTags(Landroid/os/Bundle;)V
    .locals 10

    const/4 v5, 0x0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into getTags() method"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const-string v0, "UserInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "MDN is NULL or empty"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v6, 0x7f080581

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "AUTH_TOKEN"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->getMDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sncBasic3 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mHttpClientMgr:Lcom/android/email/syncnconnect/http/HttpClientManager;

    const-string v6, "/snc/user/authThree/tags"

    invoke-virtual {v0, v6, v2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :try_start_1
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :try_start_2
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    new-instance v0, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;-><init>()V

    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseBody()[B

    move-result-object v7

    invoke-static {v7, v0}, Lcom/android/email/syncnconnect/xml/ParserUtil;->getTagsResponseXML([BLcom/android/email/syncnconnect/vo/GetTagsResponseVO;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const v7, 0x7f080583

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    const/16 v6, 0x191

    if-ne v2, v6, :cond_3

    iget v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    if-lez v6, :cond_3

    iget v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mPendingQueue:Lcom/android/email/syncnconnect/service/PendingRequestQueue;

    iget-object v6, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v3, v4}, Lcom/android/email/syncnconnect/service/PendingRequestQueue;->addGetTagsRequestOnQueue(Landroid/content/Context;J)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    sget-object v6, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0, v6}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->validateToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    :goto_2
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getTagList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "error_code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "error_text"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v5

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v5

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "Error in sending Request"

    invoke-static {v0, v6}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v2, v5

    :goto_6
    invoke-static {}, Lcom/android/email/syncnconnect/service/CallbackController;->getInstance()Lcom/android/email/syncnconnect/service/CallbackController;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/syncnconnect/service/CallbackController;->sendGetTagsCallback(ILjava/lang/String;JLjava/util/List;)V

    throw v6

    :catchall_1
    move-exception v0

    move-object v6, v0

    move v1, v2

    move-object v2, v5

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v6, v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v0

    goto :goto_6

    :catch_2
    move-exception v0

    move v1, v2

    move-object v2, v5

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_5

    :catch_4
    move-exception v0

    move v1, v2

    move-object v2, v5

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto :goto_4

    :cond_4
    move-object v9, v1

    move v1, v2

    move-object v2, v9

    goto/16 :goto_2

    :cond_5
    move-object v0, v5

    goto/16 :goto_1

    :cond_6
    move-object v2, v5

    goto/16 :goto_2
.end method

.method public final getTestMDN()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "MDN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MDN"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test MDN :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final run()V
    .locals 4

    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectThread;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Request Queue Thread started"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->get()Lcom/android/email/syncnconnect/service/Request;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->stopService()V

    return-void

    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/email/syncnconnect/service/SyncConnectThread;->mRetryCount:I

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/Request;->getType()Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    move-result-object v2

    sget-object v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->setLastAPIExecuted(Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->processRequest(Lcom/android/email/syncnconnect/service/Request;)V

    goto :goto_0
.end method
