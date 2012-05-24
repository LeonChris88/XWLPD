.class Landroid/server/BluetoothAdapterStateMachine$HotOff;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotOff"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$HotOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter HotOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const/16 v5, 0xb

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HotOff process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v0, v2

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;Z)V

    :cond_1
    :sswitch_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3100(Landroid/server/BluetoothAdapterStateMachine;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$4000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$4100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    goto :goto_0

    :sswitch_6
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-static {v3, v2, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$HotOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4200(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x36 -> :sswitch_7
        0x37 -> :sswitch_3
        0x38 -> :sswitch_4
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
    .end sparse-switch
.end method
