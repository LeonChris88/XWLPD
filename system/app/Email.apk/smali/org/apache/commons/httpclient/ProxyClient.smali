.class public Lorg/apache/commons/httpclient/ProxyClient;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/ProxyClient$1;,
        Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;,
        Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    }
.end annotation


# instance fields
.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/ProxyClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->state:Lorg/apache/commons/httpclient/HttpState;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    return-void
.end method
