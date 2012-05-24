.class Lcom/android/calendar/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lcom/android/calendar/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/android/calendar/EventLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;",
            "Lcom/android/calendar/EventLoader;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventLoader$LoadRequest;

    :goto_1
    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-interface {v0, v1}, Lcom/android/calendar/EventLoader$LoadRequest;->skipRequest(Lcom/android/calendar/EventLoader;)V

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/EventLoader$LoadRequest;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/android/calendar/EventLoader$ShutdownRequest;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-interface {v0, v1}, Lcom/android/calendar/EventLoader$LoadRequest;->processRequest(Lcom/android/calendar/EventLoader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/android/calendar/EventLoader$ShutdownRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/calendar/EventLoader$ShutdownRequest;-><init>(Lcom/android/calendar/EventLoader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
