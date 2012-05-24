.class public Lcom/android/email/service/PopImapAuthenticatorService;
.super Landroid/app/Service;
.source "PopImapAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/PopImapAuthenticatorService$1;,
        Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;,
        Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;
    }
.end annotation


# static fields
.field private static mUiThead:Ljava/lang/Thread;


# instance fields
.field private isMailDeletedFromProvider:Z

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mController:Lcom/android/email/Controller;

    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;-><init>(Lcom/android/email/service/PopImapAuthenticatorService;Lcom/android/email/service/PopImapAuthenticatorService$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mControllerResult:Lcom/android/email/Controller$Result;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller$Result;
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mControllerResult:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/service/PopImapAuthenticatorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/service/PopImapAuthenticatorService;->waitForAccountDeletion()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/service/PopImapAuthenticatorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->isMailDeletedFromProvider:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/service/PopImapAuthenticatorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/service/PopImapAuthenticatorService;->isMailDeletedFromProvider:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    return-object v0
.end method

.method private waitForAccountDeletion()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    sget-object v2, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    monitor-enter v2

    :try_start_0
    const-string v1, "PopImapAuthenticatorService"

    const-string v3, "Waiting for account delete from Email Provider ..."

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v1, "PopImapAuthenticatorService"

    const-string v3, "Wait finished"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;

    invoke-direct {v0, p0, p0}, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;-><init>(Lcom/android/email/service/PopImapAuthenticatorService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
