.class public Landroid/app/admin/DevicePolicyManager$RoamingPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoamingPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRoamingPushEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRoamingData(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingPush(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingSync(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
