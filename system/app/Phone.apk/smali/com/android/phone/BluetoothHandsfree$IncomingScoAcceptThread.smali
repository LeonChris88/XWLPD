.class Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingScoAcceptThread"
.end annotation


# instance fields
.field private mIncomingSco:Landroid/bluetooth/BluetoothSocket;

.field private final mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private stopped:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method public constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 4

    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Bluetooth HS/HF"

    const-string v3, "Could not create BluetoothServerSocket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    goto :goto_0
.end method

.method private connectSco()V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$300(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Routing audio for incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$802(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    const-string v3, "SignalScoCloseThread"

    invoke-virtual {v1, v3}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->start()V

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :cond_2
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Rejecting incoming SCO connection"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "Error when closing incoming Sco socket"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->connectSco()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "BluetoothServerSocket could not accept connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method shutdown()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->mIncomingServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->stopped:Z

    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->interrupt()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Bluetooth HS/HF"

    const-string v2, "Error when closing server socket"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
