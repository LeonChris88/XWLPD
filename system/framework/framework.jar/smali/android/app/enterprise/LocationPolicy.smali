.class public Landroid/app/enterprise/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/ILocationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LocationPolicy"

    sput-object v0, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "location_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILocationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    return-void
.end method


# virtual methods
.method public forceLocationProvidersEnable(Z)Z
    .locals 3

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> forceLocationProvidersEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->forceLocationProvidersEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "forceLocationProvidersEnable - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllLocationProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> getAllLocationProviders"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILocationPolicy;->getAllLocationProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getAllLocationProviders - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationProviderState(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->getIndividualLocationProvider(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIndividualLocationPolicy - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isLocationPolicyEnabled - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLocationProvidersEnableForced()Z
    .locals 3

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> isLocationProvidersEnableForced"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILocationPolicy;->isLocationProvidersEnableForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isLocationProvidersEnableForced - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocationProviderState(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ILocationPolicy;->setIndividualLocationProvider(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLocationProviderState - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocationProviders(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->setLocationProviders(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLocationPolicy - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
