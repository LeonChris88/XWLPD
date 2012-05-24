.class public Landroid/app/enterprise/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IBrowserPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BrowserPolicy"

    sput-object v0, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    return-void
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCookiesSetting()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getForceFraudWarningSetting()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJavaScriptSetting()Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPopupsSetting()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAutoFillSetting(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x4

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCookiesSetting(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForceFraudWarningSetting(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x8

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setJavaScriptSetting(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x10

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPopupsSetting(Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
