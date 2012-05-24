.class public Landroid/app/enterprise/RoamingPolicy;
.super Ljava/lang/Object;
.source "RoamingPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RoamingPolicy"

    sput-object v0, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoamingPushEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRoamingData(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingPush(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingSync(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
