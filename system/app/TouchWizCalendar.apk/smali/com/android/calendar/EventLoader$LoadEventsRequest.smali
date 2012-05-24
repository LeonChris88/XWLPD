.class Lcom/android/calendar/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/android/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startMillis:J

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    iput-wide p2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    iput p4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iput-object p5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .locals 8

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$200(Lcom/android/calendar/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    iget v4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iget v5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V

    iget v0, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .locals 2

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
