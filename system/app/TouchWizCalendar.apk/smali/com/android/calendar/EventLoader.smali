.class public Lcom/android/calendar/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventLoader$1;,
        Lcom/android/calendar/EventLoader$LoaderThread;,
        Lcom/android/calendar/EventLoader$LoadEventsRequest;,
        Lcom/android/calendar/EventLoader$ShutdownRequest;,
        Lcom/android/calendar/EventLoader$LoadRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/calendar/EventLoader;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/EventLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v0, Lcom/android/calendar/EventLoader$LoadEventsRequest;

    move-wide v2, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public startBackgroundThread()V
    .locals 2

    new-instance v0, Lcom/android/calendar/EventLoader$LoaderThread;

    iget-object v1, p0, Lcom/android/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/android/calendar/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/android/calendar/EventLoader;)V

    iput-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader$LoaderThread;->start()V

    return-void
.end method

.method public stopBackgroundThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventLoader;->mLoaderThread:Lcom/android/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader$LoaderThread;->shutdown()V

    return-void
.end method
