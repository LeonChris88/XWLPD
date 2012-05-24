.class Lcom/android/phone/BluetoothHeadsetService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v4

    :cond_0
    if-eq v4, v7, :cond_1

    if-ne v4, v9, :cond_3

    :cond_1
    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_4
    const-string v6, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    const-string v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/phone/BluetoothHandsfree;->sendScoGainUpdate(I)V

    goto :goto_0

    :cond_5
    const-string v6, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :cond_6
    const-string v6, "android.bluetooth.headset.action.SLC_UP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "SLC is up , broadcasting connected intent"

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6, v2, v7}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$2;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
