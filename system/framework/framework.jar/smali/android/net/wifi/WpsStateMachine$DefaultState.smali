.class Landroid/net/wifi/WpsStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WpsStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WpsStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WpsStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "WpsStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    return v1

    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WpsInfo;

    invoke-static {v2, v1}, Landroid/net/wifi/WpsStateMachine;->access$002(Landroid/net/wifi/WpsStateMachine;Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsInfo;

    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Landroid/net/wifi/WpsResult;

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    const-string v1, "WpsStateMachine"

    const-string v2, "Invalid setup for WPS"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WpsStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    iget-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    sget-object v2, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WpsStateMachine;->access$100(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WpsStateMachine;->access$200(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v1, "WpsStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start WPS with config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WpsStateMachine;->access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WpsStateMachine$DefaultState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WpsStateMachine;->access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WpsStateMachine;->access$400(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_0
        0x2007a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
