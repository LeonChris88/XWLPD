.class public Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;
.super Ljava/lang/Thread;
.source "IdleConnectionTimeoutThread.java"


# instance fields
.field private connectionManagers:Ljava/util/List;

.field private connectionTimeout:J

.field private shutdown:Z

.field private timeoutInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method protected handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->closeIdleConnections(J)V

    return-void
.end method

.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method
