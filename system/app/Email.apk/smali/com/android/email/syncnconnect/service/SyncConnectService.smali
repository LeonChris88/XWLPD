.class public Lcom/android/email/syncnconnect/service/SyncConnectService;
.super Landroid/app/Service;
.source "SyncConnectService.java"


# static fields
.field private static CLASS_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private kickWorkerThread()V
    .locals 4

    invoke-static {}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->getInstance()Lcom/android/email/syncnconnect/service/APIRequestQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/syncnconnect/service/APIRequestQueue;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/email/syncnconnect/service/SyncConnectService;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Starting the Thread"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/email/syncnconnect/service/SyncConnectThread;

    invoke-direct {v1, p0}, Lcom/android/email/syncnconnect/service/SyncConnectThread;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/service/SyncConnectThread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/syncnconnect/service/SyncConnectService;->stopSelf()V

    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/syncnconnect/service/SyncConnectService;->CLASS_NAME:Ljava/lang/String;

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectService;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Into onCreate for SyncConnectThread"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/syncnconnect/service/SyncConnectService;->kickWorkerThread()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/android/email/syncnconnect/service/SyncConnectService;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Destroying the Service"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
