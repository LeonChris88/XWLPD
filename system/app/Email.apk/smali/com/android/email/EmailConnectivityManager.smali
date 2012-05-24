.class public Lcom/android/email/EmailConnectivityManager;
.super Landroid/content/BroadcastReceiver;
.source "EmailConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/EmailConnectivityManager$ConnectivityNotifier;
    }
.end annotation


# static fields
.field private static mCellAvailable:Z

.field private static mIsAirPlaneModeON:Z

.field private static mIsWifiOnly:Z

.field private static mNetworkInfo:Landroid/net/NetworkInfo;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mStop:Z

.field private mWaitThread:Ljava/lang/Thread;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    sput-boolean v1, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z

    sput-boolean v1, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    iput-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    iput-object p1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static canConnect(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/android/email/EmailConnectivityManager;->isDataConnectivityOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getActiveNetwork(Landroid/content/Context;)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-class v9, Lcom/android/email/EmailConnectivityManager;

    monitor-enter v9

    :try_start_0
    const-string v10, "EmailConnectivityManager"

    const-string v11, "In getActiveNetwork"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    sput-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z

    sget-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v10, :cond_0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v1, v0

    array-length v6, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v5, v1, v4

    const-string v7, "EmailConnectivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Network Information [ State :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ Type :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ Type Name :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ SubType Name :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ IsAvailable :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "[ IsConnected :"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v10, v11, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    sput-boolean v10, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    :cond_2
    sget-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v7, :cond_3

    sget-object v10, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-ne v10, v7, :cond_4

    if-nez v2, :cond_4

    :goto_1
    sput-boolean v7, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v9

    return-void

    :cond_4
    move v7, v8

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v1

    return v1
.end method

.method public static getActiveNetworkType(Landroid/net/ConnectivityManager;)I
    .locals 2

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method

.method public static isDataConnectivityOn(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileAvailable()Z
    .locals 1

    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcom/android/email/EmailConnectivityManager;->mCellAvailable:Z

    return v0
.end method

.method public static isWifiOnly()Z
    .locals 1

    sget-object v0, Lcom/android/email/EmailConnectivityManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcom/android/email/EmailConnectivityManager;->mIsWifiOnly:Z

    return v0
.end method


# virtual methods
.method public IsThereActiveNetwork()Z
    .locals 2

    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getActiveNetworkType()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public hasConnectivity()Z
    .locals 2

    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackgroundDataAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public onBackgroundDataChanged(Z)V
    .locals 0

    return-void
.end method

.method public onConnectivityLost(I)V
    .locals 0

    return-void
.end method

.method public onConnectivityRestored(I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "networkInfo"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_4

    iget-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/email/EmailConnectivityManager;->onConnectivityRestored(I)V

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z

    if-ne v0, v7, :cond_3

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    sget-boolean v5, Lcom/android/email/EmailConnectivityManager;->mIsAirPlaneModeON:Z

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetwork(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_4
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/email/EmailConnectivityManager;->onConnectivityLost(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/email/EmailConnectivityManager;->isBackgroundDataAllowed()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/email/EmailConnectivityManager;->onBackgroundDataChanged(Z)V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public unregister()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    throw v0
.end method

.method public waitForConnectivity()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ConnectivityManager not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity wait ended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    :goto_1
    return-void

    :cond_3
    if-nez v1, :cond_5

    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity waiting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    throw v2

    :cond_7
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method
