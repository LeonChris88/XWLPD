.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckTimeInfo"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Ljava/lang/String;

.field private final phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mDone:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkTime()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->getTimeInfo(Landroid/os/Message;)V

    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    :try_start_4
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "CheckTimeInfo ..wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_1
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckTimeInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
