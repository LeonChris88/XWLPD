.class Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private initConnection(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDisableAPNextFailure:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    move v3, v4

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    const-string/jumbo v5, "networkInfo"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V

    sget-object v3, Landroid/net/wifi/WifiWatchdogStateMachine$4;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$008(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    move v3, v4

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v5, "Connected --> WifiInfo object null!"

    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received wifiInfo object with null elts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->initConnection(Landroid/net/wifi/WifiInfo;)V

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1502(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$008(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DelayWalledGardenState;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$008(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_5
    move v3, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x21001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
