.class Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x2001e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$15904(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$16000(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    const v2, 0xc366

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Exception in stopAccessPoint()"

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$15900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Failed to get tether update, force stop access point"

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$16800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Exception in stopAccessPoint()"

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$16900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_2
        0x20002 -> :sswitch_2
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
        0x20048 -> :sswitch_2
        0x20049 -> :sswitch_2
        0x2004d -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x23001 -> :sswitch_2
    .end sparse-switch
.end method
