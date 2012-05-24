.class public final Lcom/android/email/syncnconnect/http/HttpClientManager;
.super Ljava/lang/Object;
.source "HttpClientManager.java"


# static fields
.field private static CLASS_NAME:Ljava/lang/String;

.field private static instance:Lcom/android/email/syncnconnect/http/HttpClientManager;

.field private static mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/syncnconnect/http/HttpClientManager;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;-><init>()V

    sput-object v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->instance:Lcom/android/email/syncnconnect/http/HttpClientManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public static currentTime()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getBytesFromStream(Ljava/io/InputStream;)[B
    .locals 7

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x100

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_0
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v4, v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

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

.method private getDeviceInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";SAM;1.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/email/syncnconnect/http/HttpClientManager;
    .locals 1

    sget-object v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->instance:Lcom/android/email/syncnconnect/http/HttpClientManager;

    return-object v0
.end method

.method private handleHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    new-instance v6, Lcom/android/email/syncnconnect/http/HttpResponseVO;

    invoke-direct {v6}, Lcom/android/email/syncnconnect/http/HttpResponseVO;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    sget-object v8, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response Code :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->setResponseCode(I)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response Message :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->setResponseMessage(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v8, v1

    if-ge v2, v8, :cond_0

    sget-object v8, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Header Name :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v2

    invoke-interface {v10}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Header Value :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v2

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/email/syncnconnect/http/HttpClientManager;->getBytesFromStream(Ljava/io/InputStream;)[B

    move-result-object v3

    sget-object v8, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Http Response :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/android/email/syncnconnect/http/HttpResponseVO;->setResponseBody([B)V

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    return-object v6

    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Status line of response was null."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Response was null."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private httpDeleteRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    if-eqz p1, :cond_3

    new-instance v6, Lorg/apache/http/client/methods/HttpDelete;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Snc Server URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Content-Type"

    const-string v14, "application/octet-stream"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Cache-Control"

    const-string v14, "no-cache"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "X-VZW-DEVICE-INFO"

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->getDeviceInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Accept"

    const-string v14, "application/xml"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpDelete;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    array-length v13, v5

    if-ge v7, v13, :cond_2

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header Name :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v5, v7

    invoke-interface {v15}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header Value :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v5, v7

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time Before sending Http Request :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v13, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time After getting Http Response :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Execute call returned in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v2, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mSec."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    move-object v13, v9

    :goto_2
    return-object v13

    :catch_0
    move-exception v12

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SocketTimeOut Exception occured - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    invoke-direct/range {p0 .. p2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpDeleteRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    goto :goto_2

    :cond_4
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v14, 0x55

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_5

    invoke-direct/range {p0 .. p2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpDeleteRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    goto :goto_2

    :cond_5
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v14, 0x26

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method private httpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    if-eqz p1, :cond_3

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Snc Server URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Content-Type"

    const-string v14, "application/octet-stream"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Cache-Control"

    const-string v14, "no-cache"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "X-VZW-DEVICE-INFO"

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->getDeviceInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Accept"

    const-string v14, "application/xml"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    array-length v13, v5

    if-ge v7, v13, :cond_2

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header Name :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v5, v7

    invoke-interface {v15}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header Value :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v5, v7

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time Before sending Http Request :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v13, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time After getting Http Response :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Execute call returned in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v2, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mSec."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    move-object v13, v9

    :goto_2
    return-object v13

    :catch_0
    move-exception v12

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SocketTimeOut Exception occured - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    invoke-direct/range {p0 .. p2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    goto :goto_2

    :cond_4
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v14, 0x55

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_5

    invoke-direct/range {p0 .. p2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    goto :goto_2

    :cond_5
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v14, 0x26

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method private httpPutRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    if-eqz p2, :cond_4

    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Snc Server URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Content-Type"

    const-string v14, "application/octet-stream"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Cache-Control"

    const-string v14, "no-cache"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "X-VZW-DEVICE-INFO"

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->getDeviceInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Accept"

    const-string v14, "application/xml"

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPut;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    array-length v13, v5

    if-ge v7, v13, :cond_2

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header Name :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v5, v7

    invoke-interface {v15}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header Value :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v5, v7

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v13, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v13}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_3
    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Http Request :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time Before sending Http Request :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v13, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Time After getting Http Response :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Execute call returned in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v2, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mSec."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    move-object v13, v9

    :goto_2
    return-object v13

    :catch_0
    move-exception v12

    sget-object v13, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SocketTimeOut Exception occured - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_5

    invoke-direct/range {p0 .. p3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpPutRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    goto :goto_2

    :cond_5
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v14, 0x55

    invoke-virtual {v12}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_6

    invoke-direct/range {p0 .. p3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpPutRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    goto :goto_2

    :cond_6
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v14, 0x26

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method private postHttpRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    if-eqz p2, :cond_5

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Snc Server URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Content-Type"

    const-string v15, "application/octet-stream"

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Cache-Control"

    const-string v15, "no-cache"

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "X-VZW-DEVICE-INFO"

    invoke-direct/range {p0 .. p0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->getDeviceInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Accept"

    const-string v15, "application/xml"

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    array-length v14, v5

    if-ge v7, v14, :cond_2

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Header Name :: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v7

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Header Value :: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v7

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v14, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_3
    const/4 v9, 0x1

    sget-boolean v14, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-nez v14, :cond_4

    const-string v14, "/snc/user/authTwo/getToken"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v9, 0x0

    :cond_4
    sget-object v15, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Http Request :: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v9, :cond_6

    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time Before sending Http Request :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v14, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time After getting Http Response :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/android/email/syncnconnect/http/HttpClientManager;->currentTime()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Execute call returned in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v2, v11

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mSec."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    move-object v14, v10

    :goto_3
    return-object v14

    :cond_6
    sget-object v14, Lcom/android/email/EmailLog;->LOG_PRIVACY:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v13

    sget-object v14, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SocketTimeOut Exception occured - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_7

    invoke-direct/range {p0 .. p3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->postHttpRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    goto :goto_3

    :cond_7
    new-instance v14, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v15, 0x55

    invoke-virtual {v13}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v13}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_8

    invoke-direct/range {p0 .. p3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->postHttpRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    goto :goto_3

    :cond_8
    new-instance v14, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v15, 0x26

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method


# virtual methods
.method public sendHttpDeleteRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/email/syncnconnect/http/HttpResponseVO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into sendHttpDeleteRequest with apiName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpDeleteRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->handleHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public sendHttpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/email/syncnconnect/http/HttpResponseVO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into sendHttpGetRequest with apiName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    invoke-direct {p0, p1, p2}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpGetRequest(Ljava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->handleHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public sendHttpPostRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/email/syncnconnect/http/HttpResponseVO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into sendHttpPostRequest with apiName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->postHttpRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->handleHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public sendHttpPutRequest([BLjava/lang/String;Ljava/util/HashMap;)Lcom/android/email/syncnconnect/http/HttpResponseVO;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/email/syncnconnect/http/HttpResponseVO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into sendHttpPutRequest with apiName :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mRetryCount:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/syncnconnect/http/HttpClientManager;->httpPutRequest([BLjava/lang/String;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/email/syncnconnect/http/HttpClientManager;->handleHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/android/email/syncnconnect/http/HttpResponseVO;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public setHttpClient()V
    .locals 7

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_CONNECTION_TIMEOUT:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v3, Lcom/android/email/syncnconnect/http/HttpClientManager;->CLASS_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP_CONNECTION_TIMEOUT - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_CONNECTION_TIMEOUT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_CONNECTION_TIMEOUT:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public stopHttpClient()V
    .locals 1

    sget-object v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/syncnconnect/http/HttpClientManager;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_0
    return-void
.end method
