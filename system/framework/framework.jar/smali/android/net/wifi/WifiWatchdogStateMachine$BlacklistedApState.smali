.class Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlacklistedApState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisableAPNextFailure:Z

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v2, 0x21067

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6200(Landroid/net/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x21067

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$BlacklistedApState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method
