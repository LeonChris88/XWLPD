.class Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalScoCloseThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->stopped:Z

    if-nez v5, :cond_1

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    new-array v0, v7, [B

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->stopped:Z

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->interrupt()V

    return-void
.end method
