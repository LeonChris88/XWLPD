.class public Lgnu/inet/http/HTTPURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HTTPURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;
    }
.end annotation


# static fields
.field private static final connectionPool:Ljava/util/Map;


# instance fields
.field private agent:Ljava/lang/String;

.field private connection:Lgnu/inet/http/HTTPConnection;

.field private errorSink:Ljava/io/ByteArrayInputStream;

.field private keepAlive:Z

.field private maxConnections:I

.field private proxyHostname:Ljava/lang/String;

.field private proxyPort:I

.field private request:Lgnu/inet/http/Request;

.field private requestHeaders:Lgnu/inet/http/Headers;

.field private requestMethodSetExplicitly:Z

.field private requestSink:Ljava/io/ByteArrayOutputStream;

.field private response:Lgnu/inet/http/Response;

.field private responseSink:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v0, Lgnu/inet/http/Headers;

    invoke-direct {v0}, Lgnu/inet/http/Headers;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    new-instance v0, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;

    invoke-direct {v0, p0}, Lgnu/inet/http/HTTPURLConnection$GetHTTPPropertiesAction;-><init>(Lgnu/inet/http/HTTPURLConnection;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lgnu/inet/http/HTTPURLConnection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lgnu/inet/http/HTTPURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lgnu/inet/http/HTTPURLConnection;I)I
    .locals 0

    iput p1, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    return p1
.end method

.method static synthetic access$202(Lgnu/inet/http/HTTPURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lgnu/inet/http/HTTPURLConnection;->agent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lgnu/inet/http/HTTPURLConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lgnu/inet/http/HTTPURLConnection;->keepAlive:Z

    return p1
.end method

.method static synthetic access$402(Lgnu/inet/http/HTTPURLConnection;I)I
    .locals 0

    iput p1, p0, Lgnu/inet/http/HTTPURLConnection;->maxConnections:I

    return p1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1, p2}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public connect()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v12, -0x1

    const/16 v11, 0x2f

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    if-gez v0, :cond_1

    if-eqz v5, :cond_a

    const/16 v0, 0x1bb

    :cond_1
    :goto_1
    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    const/16 v1, 0x3a

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v12, :cond_17

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move-object v6, v1

    :goto_2
    if-nez v9, :cond_b

    move-object v1, v2

    :goto_3
    move-object v13, v3

    move v3, v0

    move-object v0, v13

    :cond_2
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    if-nez v6, :cond_3

    invoke-virtual {p0, v4, v3, v5}, Lgnu/inet/http/HTTPURLConnection;->getConnection(Ljava/lang/String;IZ)Lgnu/inet/http/HTTPConnection;

    move-result-object v6

    iput-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    :cond_3
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget v6, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    if-gez v6, :cond_4

    if-eqz v5, :cond_c

    const/16 v6, 0x1bb

    :goto_4
    iput v6, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    :cond_4
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    iget v10, p0, Lgnu/inet/http/HTTPURLConnection;->proxyPort:I

    invoke-virtual {v6, v9, v10}, Lgnu/inet/http/HTTPConnection;->setProxy(Ljava/lang/String;I)V

    :cond_5
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v6, v9, v0}, Lgnu/inet/http/HTTPConnection;->newRequest(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/http/Request;

    move-result-object v6

    iput-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    iget-boolean v6, p0, Lgnu/inet/http/HTTPURLConnection;->keepAlive:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    const-string v9, "Connection"

    const-string v10, "close"

    invoke-virtual {v6, v9, v10}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->agent:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    const-string v9, "User-Agent"

    iget-object v10, p0, Lgnu/inet/http/HTTPURLConnection;->agent:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v6}, Lgnu/inet/http/Request;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v6

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v6, v9}, Lgnu/inet/http/Headers;->putAll(Ljava/util/Map;)V

    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    new-instance v9, Lgnu/inet/http/ByteArrayRequestBodyWriter;

    invoke-direct {v9, v6}, Lgnu/inet/http/ByteArrayRequestBodyWriter;-><init>([B)V

    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v6, v9}, Lgnu/inet/http/Request;->setRequestBodyWriter(Lgnu/inet/http/RequestBodyWriter;)V

    :cond_8
    new-instance v6, Lgnu/inet/http/ByteArrayResponseBodyReader;

    invoke-direct {v6}, Lgnu/inet/http/ByteArrayResponseBodyReader;-><init>()V

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v9, v6}, Lgnu/inet/http/Request;->setResponseBodyReader(Lgnu/inet/http/ResponseBodyReader;)V

    if-eqz v1, :cond_9

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    new-instance v10, Lgnu/inet/http/HTTPURLConnection$1;

    invoke-direct {v10, p0, v1}, Lgnu/inet/http/HTTPURLConnection$1;-><init>(Lgnu/inet/http/HTTPURLConnection;Lgnu/inet/http/Credentials;)V

    invoke-virtual {v9, v10}, Lgnu/inet/http/Request;->setAuthenticator(Lgnu/inet/http/Authenticator;)V

    :cond_9
    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->request:Lgnu/inet/http/Request;

    invoke-virtual {v9}, Lgnu/inet/http/Request;->dispatch()Lgnu/inet/http/Response;

    move-result-object v9

    iput-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v9}, Lgnu/inet/http/Response;->getCodeClass()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_14

    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->getInstanceFollowRedirects()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    const-string v9, "Location"

    invoke-virtual {v6, v9}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    iget-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v9}, Lgnu/inet/http/HTTPConnection;->getURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_d

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    move v0, v7

    :goto_5
    move v13, v0

    move-object v0, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v13

    :goto_6
    if-nez v6, :cond_2

    iput-boolean v7, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x50

    goto/16 :goto_1

    :cond_b
    new-instance v1, Lgnu/inet/http/Credentials;

    invoke-direct {v1, v9, v6}, Lgnu/inet/http/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const/16 v6, 0x50

    goto/16 :goto_4

    :cond_d
    const-string v9, "http:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->close()V

    iput-object v2, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    const/4 v0, 0x7

    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v12, :cond_e

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move v6, v8

    move-object v3, v4

    move v4, v0

    move v0, v7

    goto :goto_5

    :cond_e
    const/16 v0, 0x50

    goto :goto_7

    :cond_f
    const-string v9, "https:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->close()V

    iput-object v2, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    const/16 v0, 0x8

    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v12, :cond_10

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move v6, v7

    move-object v3, v4

    move v4, v0

    move v0, v7

    goto/16 :goto_5

    :cond_10
    const/16 v0, 0x1bb

    goto :goto_8

    :cond_11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_16

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_12

    move-object v0, v6

    :goto_9
    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    move v0, v7

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ne v9, v12, :cond_13

    const-string v0, "/"

    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_13
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_14
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Lgnu/inet/http/ByteArrayResponseBodyReader;->toByteArray()[B

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v9, p0, Lgnu/inet/http/HTTPURLConnection;->responseSink:Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v6}, Lgnu/inet/http/Response;->getCode()I

    move-result v6

    const/16 v9, 0x194

    if-ne v6, v9, :cond_15

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->responseSink:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->errorSink:Ljava/io/ByteArrayInputStream;

    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move v6, v8

    goto/16 :goto_6

    :cond_16
    move v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    move v0, v8

    goto/16 :goto_5

    :cond_17
    move-object v9, v6

    move-object v6, v2

    goto/16 :goto_2
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getConnection(Ljava/lang/String;IZ)Lgnu/inet/http/HTTPConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->keepAlive:Z

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    if-eqz p3, :cond_2

    const-string v0, "https://"

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/http/HTTPConnection;

    if-nez v0, :cond_1

    new-instance v0, Lgnu/inet/http/HTTPConnection;

    invoke-direct {v0, p1, p2, p3}, Lgnu/inet/http/HTTPConnection;-><init>(Ljava/lang/String;IZ)V

    sget-object v3, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, p0, Lgnu/inet/http/HTTPURLConnection;->maxConnections:I

    if-ne v3, v4, :cond_0

    sget-object v3, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v3, Lgnu/inet/http/HTTPURLConnection;->connectionPool:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :cond_2
    const-string v0, "http://"

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    new-instance v0, Lgnu/inet/http/HTTPConnection;

    invoke-direct {v0, p1, p2, p3}, Lgnu/inet/http/HTTPConnection;-><init>(Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lgnu/inet/http/HTTPURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->errorSink:Ljava/io/ByteArrayInputStream;

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {p0, v0}, Lgnu/inet/http/HTTPURLConnection;->getStatusLine(Lgnu/inet/http/Response;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Response;->getDateHeader(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-wide p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez p1, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 4

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, ""

    iget-object v3, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {p0, v3}, Lgnu/inet/http/HTTPURLConnection;->getStatusLine(Lgnu/inet/http/Response;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V

    :cond_0
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->doInput:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "doInput is false"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->responseSink:Ljava/io/ByteArrayInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->doOutput:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "doOutput is false"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestMethodSetExplicitly:Z

    if-nez v0, :cond_2

    const-string v0, "POST"

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->method:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    :cond_3
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestSink:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/inet/http/HTTPURLConnection;->connect()V

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->response:Lgnu/inet/http/Response;

    invoke-virtual {v0}, Lgnu/inet/http/Response;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStatusLine(Lgnu/inet/http/Response;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Empty method name"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_3

    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal character \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lgnu/inet/http/HTTPURLConnection;->method:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestMethodSetExplicitly:Z

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1, p2}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public usingProxy()Z
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPURLConnection;->proxyHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
