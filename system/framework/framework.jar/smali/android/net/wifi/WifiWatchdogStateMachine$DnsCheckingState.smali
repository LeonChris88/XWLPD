.class Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheckingState"
.end annotation


# instance fields
.field dnsCheckLogStr:Ljava/lang/String;

.field dnsCheckSuccesses:[I

.field dnsResponseStrs:[Ljava/lang/String;

.field idDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckLogStr:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private shouldCheckWalledGarden()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v3

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3900(JLjava/lang/Long;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 8

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsResponseStrs:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v5

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->mDnsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    mul-int/lit16 v7, v0, 0xc8

    add-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v3, v6, v7}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    const/high16 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v5, "Received a Dns response with unknown ID!"

    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v2, :cond_3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->dnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    if-lt v4, v5, :cond_5

    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->shouldCheckWalledGarden()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->idDnsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckFailureState;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method
