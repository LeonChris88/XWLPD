.class public Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;
.super Ljava/lang/Object;
.source "SimpleHttpConnectionManager.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private alwaysClose:Z

.field protected httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

.field private idleStartTime:J

.field private volatile inUse:Z

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    iput-boolean v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    return-void
.end method

.method static finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->getLastResponseInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p1

    iget-wide v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :cond_0
    return-void
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release of an unknown connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->alwaysClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->inUse:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->idleStartTime:J

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->httpConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-static {v0}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_0
.end method
