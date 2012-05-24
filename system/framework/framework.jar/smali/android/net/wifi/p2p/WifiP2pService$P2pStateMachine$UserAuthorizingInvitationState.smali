.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAuthorizingInvitationState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5500()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5500()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v1

    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$7400()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User rejected invitation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInvitationState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x23006
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
