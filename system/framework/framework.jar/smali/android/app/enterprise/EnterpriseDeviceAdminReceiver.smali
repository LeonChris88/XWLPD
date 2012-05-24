.class public Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "EnterpriseDeviceAdminReceiver.java"


# instance fields
.field private mManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getWho(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->mWho:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.app.action.ACTION_PASSWORD_FAILED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v3, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v3, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v3, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminReceiver;->onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
