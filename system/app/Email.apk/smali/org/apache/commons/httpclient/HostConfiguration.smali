.class public Lorg/apache/commons/httpclient/HostConfiguration;
.super Ljava/lang/Object;
.source "HostConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;


# instance fields
.field private host:Lorg/apache/commons/httpclient/HttpHost;

.field private localAddress:Ljava/net/InetAddress;

.field private params:Lorg/apache/commons/httpclient/params/HostParams;

.field private proxyHost:Lorg/apache/commons/httpclient/ProxyHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    new-instance v0, Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HostParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    return-void
.end method

.method private init(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 3

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpHost;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpHost;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    :goto_0
    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ProxyHost;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/ProxyHost;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HostParams;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/params/HostParams;

    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host configuration could not be cloned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, p0}, Lorg/apache/commons/httpclient/HostConfiguration;->init(Lorg/apache/commons/httpclient/HostConfiguration;)V

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Host configuration could not be cloned"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    instance-of v4, p1, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HostConfiguration;

    move-object v1, v0

    iget-object v4, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    iget-object v5, v1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v4, v5}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    iget-object v5, v1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v4, v5}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    iget-object v5, v1, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v4, v5}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HostParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p3, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setLocalAddress(Ljava/net/InetAddress;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxy(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/commons/httpclient/ProxyHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/ProxyHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "HostConfiguration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const-string v2, "host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v2, "proxyHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_4

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v2, "localAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_5

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v2, "params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
