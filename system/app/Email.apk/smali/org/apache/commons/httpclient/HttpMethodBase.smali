.class public abstract Lorg/apache/commons/httpclient/HttpMethodBase;
.super Ljava/lang/Object;
.source "HttpMethodBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethod;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private volatile aborted:Z

.field private connectionCloseForced:Z

.field private cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

.field private doAuthentication:Z

.field protected effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

.field private followRedirects:Z

.field private hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private httphost:Lorg/apache/commons/httpclient/HttpHost;

.field private params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

.field private path:Ljava/lang/String;

.field private proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private queryString:Ljava/lang/String;

.field private recoverableExceptionCount:I

.field private requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private requestSent:Z

.field private responseBody:[B

.field private responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

.field private responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private responseStream:Ljava/io/InputStream;

.field private responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field protected statusLine:Lorg/apache/commons/httpclient/StatusLine;

.field private used:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    iput v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    return-void
.end method

.method private ensureConnectionRelease()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public addResponseFooter(Lorg/apache/commons/httpclient/Header;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    return-void
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    return-object v0
.end method

.method public getResponseBodyAsStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "re-creating response stream from byte array"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method protected getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getResponseHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lorg/apache/commons/httpclient/StatusLine;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConnectionCloseForced()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    return v0
.end method

.method protected responseBodyConsumed()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.warn-extra-input"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Extra response data detected - closing connection"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    return-void
.end method

.method protected shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->isConnectionCloseForced()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Should force-close connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v3, "proxy-connection"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v3, "connection"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v3, "connection"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should close connection in response to directive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keep-alive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should NOT close connection in response to directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_8
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Resorting to protocol version default close connection policy"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should NOT close connection, using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should close connection, using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method
