.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPin"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPin(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;
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
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

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
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

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
