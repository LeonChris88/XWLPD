.class Lcom/samsung/media/fmradio/FMEventListener$2;
.super Landroid/os/Handler;
.source "FMEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/FMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/media/fmradio/FMEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/media/fmradio/FMEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onChannelFound(J)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStarted()V

    goto :goto_0

    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [J

    move-object v1, v4

    check-cast v1, [J

    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4, v1}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStopped([J)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [J

    move-object v1, v4

    check-cast v1, [J

    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4, v1}, Lcom/samsung/media/fmradio/FMEventListener;->onScanFinished([J)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onOn()V

    goto :goto_0

    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4, v3}, Lcom/samsung/media/fmradio/FMEventListener;->onOff(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    goto :goto_0

    :pswitch_8
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneDisconnected()V

    goto :goto_0

    :pswitch_9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v4, v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSEnabled()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSDisabled()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->onAFStarted()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onAFReceived(J)V

    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v4, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMEventListener;->volumeLock()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
