.class public Landroid/app/enterprise/ApnSettingsPolicy;
.super Ljava/lang/Object;
.source "ApnSettingsPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final lService:Landroid/app/enterprise/IApnSettingsPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApnSettingsPolicy"

    sput-object v0, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "apn_settings_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApnSettingsPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    sget-object v0, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apn settings policy API - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createApnSettings(Landroid/app/enterprise/ApnSettings;)J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v3, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    const/4 v4, 0x1

    invoke-interface {v3, v4, p1}, Landroid/app/enterprise/IApnSettingsPolicy;->addUpdateApn(ZLandroid/app/enterprise/ApnSettings;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    sget-object v3, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createApnSettings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :catch_0
    move-exception v2

    sget-object v3, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at update APN Settings policy "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteApn(J)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IApnSettingsPolicy;->deleteApn(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    sget-object v2, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteApn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API deleteApn()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getApnList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IApnSettingsPolicy;->getApnList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API getApnList()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getApnSettings(J)Landroid/app/enterprise/ApnSettings;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IApnSettingsPolicy;->getApnSettings(J)Landroid/app/enterprise/ApnSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API getApnSettings()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPreferredApnSettings()Landroid/app/enterprise/ApnSettings;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IApnSettingsPolicy;->getPreferredApn()Landroid/app/enterprise/ApnSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API getPreferredApnSettings()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public saveApnSettings(Landroid/app/enterprise/ApnSettings;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/enterprise/ApnSettingsPolicy;->updateApnSettings(Landroid/app/enterprise/ApnSettings;)Z

    move-result v0

    return v0
.end method

.method public setPreferredApn(J)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IApnSettingsPolicy;->setPreferredApn(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    sget-object v2, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferredApn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at APN Settings policy API setPreferredApn()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateApnSettings(Landroid/app/enterprise/ApnSettings;)Z
    .locals 8

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-wide v0, p1, Landroid/app/enterprise/ApnSettings;->id:J

    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/app/enterprise/ApnSettingsPolicy;->lService:Landroid/app/enterprise/IApnSettingsPolicy;

    const/4 v7, 0x0

    invoke-interface {v6, v7, p1}, Landroid/app/enterprise/IApnSettingsPolicy;->addUpdateApn(ZLandroid/app/enterprise/ApnSettings;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_1
    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    sget-object v4, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateApnSettings: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    move-wide v0, v4

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v6, Landroid/app/enterprise/ApnSettingsPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Failed at update APN Settings policy "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
