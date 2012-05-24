.class public Landroid/app/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final APPLICATION_INSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_INSTALLATION_MODE_DISALLOW:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    return-void
.end method


# virtual methods
.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPermissionToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppSignatureToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon:packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    :try_start_0
    array-length v2, p2

    const/high16 v3, 0x10

    if-le v2, v3, :cond_1

    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon: Icon size is too big :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableAndroidBrowser()V
    .locals 2

    const-string v0, "com.android.browser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public disableAndroidMarket()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public disableVoiceDialer()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public disableYouTube()V
    .locals 2

    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableAndroidBrowser()V
    .locals 2

    const-string v0, "com.android.browser"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableVoiceDialer()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableYouTube()V
    .locals 2

    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsBlackList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignaturesAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesBlackList()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignatureBlackList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCacheSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCodeSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCpuUsage(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationDataSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCustomApplicationIcon: Failed talking with Application control policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationMode()I
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppInstallationMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationMemoryUsage(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationNetworkStats()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getNetworkStats()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateList(Z)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationTotalSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostCpuUsageApps(IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostDataUsageApps(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNDataUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostMemoryUsageApps(IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNMemoryUsageApp(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationMode(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAppInstallationMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAsManagedApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->startApp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->stopApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
