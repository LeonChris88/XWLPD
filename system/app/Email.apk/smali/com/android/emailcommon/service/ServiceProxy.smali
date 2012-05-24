.class public abstract Lcom/android/emailcommon/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;,
        Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;,
        Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;
    }
.end annotation


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDead:Z

.field protected final mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private final mTag:Ljava/lang/String;

.field private mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

.field private mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$1;)V

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mRunnable:Ljava/lang/Runnable;

    const-string v0, " unnamed"

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$1;)V

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mDead:Z

    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTag:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/emailcommon/service/ServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/emailcommon/service/ServiceProxy;->runTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    return-object v0
.end method

.method private runTask()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/emailcommon/service/ServiceProxy;->endTask()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public endTask()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mDead:Z

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract onConnected(Landroid/os/IBinder;)V
.end method

.method public setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mDead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mStartTime:J

    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    .locals 1

    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    move-result v0

    return v0
.end method

.method public setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;
    .locals 0

    iput p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    return-object p0
.end method

.method public test()Z
    .locals 3

    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/ServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/ServiceProxy$1;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    const-string v2, "test"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/ServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 8

    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    iget v4, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method
