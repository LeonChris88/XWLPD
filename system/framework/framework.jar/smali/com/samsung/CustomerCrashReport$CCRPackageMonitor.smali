.class Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "CustomerCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/CustomerCrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCRPackageMonitor"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/CustomerCrashReport;


# direct methods
.method public constructor <init>(Lcom/samsung/CustomerCrashReport;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->this$0:Lcom/samsung/CustomerCrashReport;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method isExactlyCCR(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.samsung.ccr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sys.ccr"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sys.ccr"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sys.ccr"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sys.ccr"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    :cond_0
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sys.ccr"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sys.ccr"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sys.ccr"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0

    return-void
.end method
