.class public Landroid/app/enterprise/remotecontrol/RemoteInjection;
.super Ljava/lang/Object;
.source "RemoteInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    return-void
.end method

.method public static getInstance()Landroid/app/enterprise/remotecontrol/RemoteInjection;
    .locals 2

    sget-object v1, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;

    invoke-direct {v0}, Landroid/app/enterprise/remotecontrol/RemoteInjection;-><init>()V

    sput-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->gRemoteInjection:Landroid/app/enterprise/remotecontrol/RemoteInjection;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 4

    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/remotecontrol/IRemoteInjection;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting key event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 4

    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/remotecontrol/IRemoteInjection;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting pointer event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 4

    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/remotecontrol/RemoteInjection;->mRemoteService:Landroid/app/enterprise/remotecontrol/IRemoteInjection;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/remotecontrol/IRemoteInjection;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "RemoteInjection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error injecting trackball event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
