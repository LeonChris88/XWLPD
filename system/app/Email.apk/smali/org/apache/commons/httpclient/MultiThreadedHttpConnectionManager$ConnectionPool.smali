.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionPool"
.end annotation


# instance fields
.field private freeConnections:Ljava/util/LinkedList;

.field private idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

.field private final mapHosts:Ljava/util/Map;

.field private numConnections:I

.field final synthetic this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

.field private waitingThreads:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    new-instance v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V

    return-void
.end method

.method private declared-synchronized deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v2, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reclaiming connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    iget v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized closeIdleConnections(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteClosedConnections()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 6

    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v3, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v1

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Freeing connection, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v2

    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v3, :cond_2

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    :cond_2
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    move-object v3, v0

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    iget v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    if-nez v3, :cond_3

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->add(Lorg/apache/commons/httpclient/HttpConnection;)V

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public declared-synchronized getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "enter HttpConnectionManager.ConnectionPool.getHostPool(HostConfiguration)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleLostConnection(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 2

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying thread waiting on host pool, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v1, v0

    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "No-one waiting on host pool, notifying next waiting thread."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v1, v0

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    iget-object v2, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5
    :try_start_2
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Notifying no-one, there are no waiting threads"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
