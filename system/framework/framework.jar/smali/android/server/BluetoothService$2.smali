.class Landroid/server/BluetoothService$2;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0

    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_1

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-lez v1, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v6, v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;II)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Landroid/server/BluetoothService;->access$200()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x104032f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Landroid/server/BluetoothService;->access$200()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040330

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_4
    const-string v4, "BluetoothService"

    const-string v5, "Received BT_BOOTUP message"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v7}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
