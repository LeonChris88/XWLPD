.class Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    const v2, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$5002(Landroid/net/wifi/WifiStateMachine;Z)Z

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v2, v0

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanIntervalCommand(I)V

    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const v10, 0x20034

    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x1

    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    :goto_0
    return v8

    :sswitch_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    const v6, 0xc366

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_1
    move v8, v7

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Connection lost, restart supplicant"

    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;Z)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v6

    const v8, 0x2006f

    invoke-virtual {v6, v8}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;

    move-result-object v6

    const v8, 0x2007a

    invoke-virtual {v6, v8}, Landroid/net/wifi/WpsStateMachine;->sendMessage(I)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x2000b

    const-wide/16 v9, 0x1388

    invoke-virtual {v6, v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x0

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$5800(Landroid/net/wifi/WifiStateMachine;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5902(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1

    :sswitch_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_1

    :sswitch_4
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v0, v9}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    invoke-virtual {v8, p1, v10, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    invoke-virtual {v6, p1, v10, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_6
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v9, v10}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;II)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Landroid/net/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_7
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-ne v10, v7, :cond_6

    move v8, v7

    :cond_6
    invoke-static {v9, v8}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v6, v8, v10

    if-lez v6, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6, v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$6302(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    :sswitch_9
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v9}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    :sswitch_a
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z

    goto/16 :goto_1

    :sswitch_b
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z

    goto/16 :goto_1

    :sswitch_c
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v3

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    const v9, 0x2003b

    if-eqz v3, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {v8, p1, v9, v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    const-string v6, "backup"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v6, "com.android.providers.settings"

    invoke-interface {v2, v6}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_1

    :sswitch_d
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Failed to start soft AP with a running supplicant"

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v8, 0xe

    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    :sswitch_e
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    move v8, v7

    :cond_a
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$5002(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v0, v8}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    goto/16 :goto_1

    :sswitch_10
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Landroid/net/wifi/WifiConfigStore;->forgetNetwork(I)V

    goto/16 :goto_1

    :sswitch_11
    invoke-static {}, Landroid/net/wifi/WifiNative;->setInitializeScanIntervalCommand()Z

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_d
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_9
        0x20039 -> :sswitch_a
        0x2003a -> :sswitch_b
        0x2003b -> :sswitch_c
        0x20048 -> :sswitch_e
        0x20057 -> :sswitch_f
        0x20058 -> :sswitch_10
        0x2007b -> :sswitch_11
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x2400a -> :sswitch_3
    .end sparse-switch
.end method
