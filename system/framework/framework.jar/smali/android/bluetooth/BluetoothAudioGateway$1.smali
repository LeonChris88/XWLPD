.class Landroid/bluetooth/BluetoothAudioGateway$1;
.super Ljava/lang/Thread;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAudioGateway;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, -0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$000(Landroid/bluetooth/BluetoothAudioGateway;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0, v8}, Landroid/bluetooth/BluetoothAudioGateway;->access$102(Landroid/bluetooth/BluetoothAudioGateway;I)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0, v8}, Landroid/bluetooth/BluetoothAudioGateway;->access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->access$300(Landroid/bluetooth/BluetoothAudioGateway;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$400(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select thread timed out, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$400(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms of waiting remain."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$400(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "BT Audio Gateway"

    const-string/jumbo v1, "select thread was interrupted (2), exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->access$002(Landroid/bluetooth/BluetoothAudioGateway;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "BT Audio Gateway"

    const-string v1, "connect notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$100(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    if-ltz v0, :cond_2

    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming connection from headset  on channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$100(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$500(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v7

    const/16 v0, 0x64

    iput v0, v7, Landroid/os/Message;->what:I

    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$700(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$800(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v5}, Landroid/bluetooth/BluetoothAudioGateway;->access$100(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$200(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "BT Audio Gateway"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming connection from handsfree  on channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$200(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAudioGateway;->access$500(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    const/16 v0, 0x65

    iput v0, v7, Landroid/os/Message;->what:I

    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAudioGateway;->access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$900(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v4}, Landroid/bluetooth/BluetoothAudioGateway;->access$1000(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothAudioGateway$1;->this$0:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-static {v5}, Landroid/bluetooth/BluetoothAudioGateway;->access$200(Landroid/bluetooth/BluetoothAudioGateway;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
