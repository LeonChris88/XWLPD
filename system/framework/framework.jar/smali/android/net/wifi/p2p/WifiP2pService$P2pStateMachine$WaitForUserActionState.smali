.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForUserActionState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$200(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$200(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x23001

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForWifiDisableState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v3, "User rejected enabling p2p"

    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$WaitForUserActionState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v1, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x22001 -> :sswitch_2
        0x22004 -> :sswitch_2
        0x23004 -> :sswitch_0
        0x23005 -> :sswitch_1
    .end sparse-switch
.end method
