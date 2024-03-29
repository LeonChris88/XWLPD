.class public Lorg/apache/commons/httpclient/params/HttpMethodParams;
.super Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.source "HttpMethodParams.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final PROTOCOL_STRICTNESS_PARAMETERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;->LOG:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http.protocol.unambiguous-statusline"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http.protocol.single-cookie-header"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http.protocol.strict-transfer-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http.protocol.reject-head-body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http.protocol.warn-extra-input"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;->PROTOCOL_STRICTNESS_PARAMETERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public getHttpElementCharset()Ljava/lang/String;
    .locals 3

    const-string v1, "http.protocol.element-charset"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/commons/httpclient/params/HttpMethodParams;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "HTTP element charset not configured, using US-ASCII"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    const-string v0, "US-ASCII"

    :cond_0
    return-object v0
.end method

.method public setContentCharset(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http.protocol.content-charset"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookiePolicy(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http.protocol.cookie-policy"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHttpElementCharset(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http.protocol.element-charset"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V
    .locals 1

    const-string v0, "http.protocol.version"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
