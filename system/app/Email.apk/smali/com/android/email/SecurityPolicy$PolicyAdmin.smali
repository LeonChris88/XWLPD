.class public Lcom/android/email/SecurityPolicy$PolicyAdmin;
.super Lcom/android/emailcommon/variant/DeviceAdminReceiverWraper;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyAdmin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/emailcommon/variant/DeviceAdminReceiverWraper;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f080119

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->processDevicePolicyMessage(Landroid/content/Context;I)V

    return-void
.end method

.method public onRecoveryPasswordRequested(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->sendRecoveryPassword()V

    return-void
.end method
