.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0

    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x8000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    :pswitch_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    :cond_1
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v10, 0x0

    invoke-static {v9, v2, v7, v10}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_3
    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v9}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v10, v9}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v9, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v9}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-le v3, v4, :cond_4

    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v9, v5}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    if-ge v3, v4, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v9, v5}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
