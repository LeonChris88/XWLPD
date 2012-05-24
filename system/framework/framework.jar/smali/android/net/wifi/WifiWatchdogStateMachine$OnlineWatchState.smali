.class Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineWatchState"
.end annotation


# instance fields
.field checkGuard:I

.field lastCheckTime:Ljava/lang/Long;

.field pingInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field signalUnstable:Z

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

.field unstableSignalChecks:Z


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private triggerSingleDnsCheck()V
    .locals 7

    iget-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v4, 0x21066

    iget v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    invoke-static {v0, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(JLjava/lang/Long;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->triggerSingleDnsCheck()V

    return-void
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    move v6, v5

    :cond_0
    :goto_0
    return v6

    :sswitch_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_0

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v7, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4500(Landroid/net/wifi/WifiWatchdogStateMachine;I)Z

    move-result v7

    if-nez v7, :cond_1

    move v5, v6

    :cond_1
    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->signalUnstable:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->triggerSingleDnsCheck()V

    goto :goto_0

    :sswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    if-ne v7, v8, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->lastCheckTime:Ljava/lang/Long;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v9

    invoke-virtual {v8, v0, v9, v5}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :sswitch_2
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ltz v4, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->checkGuard:I

    iput-boolean v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->unstableSignalChecks:Z

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->triggerSingleDnsCheck()V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->pingInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21066 -> :sswitch_1
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method
