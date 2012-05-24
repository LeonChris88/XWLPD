.class public Landroid/app/enterprise/DatafadePolicy;
.super Ljava/lang/Object;
.source "DatafadePolicy.java"


# static fields
.field public static final EXTERNAL_MEMORY:Ljava/lang/String; = "external"

.field public static final FACTORY_RESET:Ljava/lang/String; = "factory_reset"

.field public static final INTERNAL_EXTERNAL_MEMORY:Ljava/lang/String; = "all"

.field public static final INTERNAL_MEMORY:Ljava/lang/String; = "internal"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IDataFadePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DataFadePolicy"

    sput-object v0, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    return-void
.end method


# virtual methods
.method public addDatafadeWipeTask(IIII[Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IDataFadePolicy;->addDatafadeWipeTask(IIII[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    sget-object v0, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with misc policy"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteDatafadeWipeTask(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDataFadePolicy;->deleteDatafadeWipeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDatafadeWipeInfoList(I)[Landroid/app/enterprise/DatafadeInfo;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IDataFadePolicy;->getDatafadeWipeInfoList(I)[Landroid/app/enterprise/DatafadeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerDatafadeWipeCallback(Landroid/app/enterprise/DatafadeWipeCallback;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    iget-object v2, p1, Landroid/app/enterprise/DatafadeWipeCallback;->callback:Landroid/app/enterprise/IDatafadeWipeCallback;

    invoke-interface {v1, v2}, Landroid/app/enterprise/IDataFadePolicy;->registerDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startDatafadeWipe()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDataFadePolicy;->startDatafadeWipe()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopDatafadeWipe()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IDataFadePolicy;->stopDatafadeWipe()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterDatafadeWipeCallback(Landroid/app/enterprise/DatafadeWipeCallback;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/DatafadePolicy;->mService:Landroid/app/enterprise/IDataFadePolicy;

    iget-object v2, p1, Landroid/app/enterprise/DatafadeWipeCallback;->callback:Landroid/app/enterprise/IDatafadeWipeCallback;

    invoke-interface {v1, v2}, Landroid/app/enterprise/IDataFadePolicy;->unregisterDatafadeWipeCallback(Landroid/app/enterprise/IDatafadeWipeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/DatafadePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
