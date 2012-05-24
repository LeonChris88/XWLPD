.class public Lgnu/inet/http/HTTPConnection;
.super Ljava/lang/Object;
.source "HTTPConnection.java"


# static fields
.field private static final userAgent:Ljava/lang/String;


# instance fields
.field private final connectionListeners:Ljava/util/List;

.field protected final connectionTimeout:I

.field protected cookieManager:Lgnu/inet/http/CookieManager;

.field protected final hostname:Ljava/lang/String;

.field protected in:Ljava/io/InputStream;

.field protected majorVersion:I

.field protected minorVersion:I

.field private nonceCounts:Ljava/util/Map;

.field protected out:Ljava/io/OutputStream;

.field protected final port:I

.field protected proxyHostname:Ljava/lang/String;

.field protected proxyPort:I

.field private final requestListeners:Ljava/util/List;

.field protected final secure:Z

.field protected socket:Ljava/net/Socket;

.field protected final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lgnu/inet/http/HTTPConnection;->initUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/inet/http/HTTPConnection;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lgnu/inet/http/HTTPConnection;-><init>(Ljava/lang/String;IZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZII)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    iput p2, p0, Lgnu/inet/http/HTTPConnection;->port:I

    iput-boolean p3, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    iput p4, p0, Lgnu/inet/http/HTTPConnection;->connectionTimeout:I

    iput p5, p0, Lgnu/inet/http/HTTPConnection;->timeout:I

    const/4 v0, 0x1

    iput v0, p0, Lgnu/inet/http/HTTPConnection;->minorVersion:I

    iput v0, p0, Lgnu/inet/http/HTTPConnection;->majorVersion:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    return-void
.end method

.method private static initUserAgent()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "inetlib/1.1 ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "user.language"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "inetlib/1.1"

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lgnu/inet/http/HTTPConnection;->fireConnectionEvent(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lgnu/inet/http/HTTPConnection;->fireConnectionEvent(I)V

    throw v0
.end method

.method protected closeConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    throw v0
.end method

.method protected fireConnectionEvent(I)V
    .locals 4

    new-instance v1, Lgnu/inet/http/event/ConnectionEvent;

    invoke-direct {v1, p0, p1}, Lgnu/inet/http/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lgnu/inet/http/event/ConnectionListener;

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/ConnectionListener;->connectionClosed(Lgnu/inet/http/event/ConnectionEvent;)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected fireRequestEvent(ILgnu/inet/http/Request;)V
    .locals 4

    new-instance v1, Lgnu/inet/http/event/RequestEvent;

    invoke-direct {v1, p0, p1, p2}, Lgnu/inet/http/event/RequestEvent;-><init>(Ljava/lang/Object;ILgnu/inet/http/Request;)V

    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lgnu/inet/http/event/RequestListener;

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->requestListeners:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/RequestListener;->requestCreated(Lgnu/inet/http/event/RequestEvent;)V

    goto :goto_1

    :pswitch_1
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/RequestListener;->requestSent(Lgnu/inet/http/event/RequestEvent;)V

    goto :goto_1

    :pswitch_2
    aget-object v2, v3, v0

    invoke-interface {v2, v1}, Lgnu/inet/http/event/RequestListener;->requestSent(Lgnu/inet/http/event/RequestEvent;)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCookieManager()Lgnu/inet/http/CookieManager;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->cookieManager:Lgnu/inet/http/CookieManager;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->getSocket()Ljava/net/Socket;

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method getNonceCount(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->getSocket()Ljava/net/Socket;

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_3

    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    invoke-virtual {p0}, Lgnu/inet/http/HTTPConnection;->isUsingProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->proxyHostname:Ljava/lang/String;

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->proxyPort:I

    :cond_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lgnu/inet/http/HTTPConnection;->connectionTimeout:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    iget v4, p0, Lgnu/inet/http/HTTPConnection;->connectionTimeout:I

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :goto_0
    iget v2, p0, Lgnu/inet/http/HTTPConnection;->timeout:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    iget v3, p0, Lgnu/inet/http/HTTPConnection;->timeout:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_1
    iget-boolean v2, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Lgnu/inet/util/EmptyX509TrustManager;

    invoke-direct {v2}, Lgnu/inet/util/EmptyX509TrustManager;-><init>()V

    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v0, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TLSv1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SSLv3"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/http/HTTPConnection;->out:Ljava/io/OutputStream;

    :cond_3
    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    return-object v0

    :cond_4
    iget-object v2, p0, Lgnu/inet/http/HTTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getURI()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v0, :cond_1

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "http://"

    goto :goto_0

    :cond_2
    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/inet/http/HTTPConnection;->majorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/inet/http/HTTPConnection;->minorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method incrementNonce(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lgnu/inet/http/HTTPConnection;->getNonceCount(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, Lgnu/inet/http/HTTPConnection;->nonceCounts:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isUsingProxy()Z
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->proxyHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->proxyPort:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRequest(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/http/Request;
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method must have non-zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string p2, "/"

    :cond_3
    new-instance v2, Lgnu/inet/http/Request;

    invoke-direct {v2, p0, p1, p2}, Lgnu/inet/http/Request;-><init>(Lgnu/inet/http/HTTPConnection;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v3, 0x1bb

    if-ne v0, v3, :cond_5

    :cond_4
    iget-boolean v0, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    if-nez v0, :cond_6

    iget v0, p0, Lgnu/inet/http/HTTPConnection;->port:I

    const/16 v3, 0x50

    if-eq v0, v3, :cond_6

    :cond_5
    const-string v0, "Host"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lgnu/inet/http/HTTPConnection;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "User-Agent"

    sget-object v3, Lgnu/inet/http/HTTPConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v3, "chunked;q=1.0, gzip;q=0.9, deflate;q=0.8, identity;q=0.6, *;q=0"

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->cookieManager:Lgnu/inet/http/CookieManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgnu/inet/http/HTTPConnection;->cookieManager:Lgnu/inet/http/CookieManager;

    iget-object v3, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    iget-boolean v4, p0, Lgnu/inet/http/HTTPConnection;->secure:Z

    invoke-interface {v0, v3, v4, p2}, Lgnu/inet/http/CookieManager;->getCookies(Ljava/lang/String;ZLjava/lang/String;)[Lgnu/inet/http/Cookie;

    move-result-object v3

    if-eqz v3, :cond_8

    array-length v0, v3

    if-lez v0, :cond_8

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "$Version=1"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_7

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lgnu/inet/http/Cookie;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "Host"

    iget-object v3, p0, Lgnu/inet/http/HTTPConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "Cookie"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0, v1, v2}, Lgnu/inet/http/HTTPConnection;->fireRequestEvent(ILgnu/inet/http/Request;)V

    return-object v2
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lgnu/inet/http/HTTPConnection;->proxyHostname:Ljava/lang/String;

    iput p2, p0, Lgnu/inet/http/HTTPConnection;->proxyPort:I

    return-void
.end method
