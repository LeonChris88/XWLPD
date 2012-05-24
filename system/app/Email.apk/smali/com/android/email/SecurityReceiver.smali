.class public Lcom/android/email/SecurityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecurityReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdminName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/email/SecurityReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/SecurityReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handlePasswordRecovery()V
    .locals 3

    sget-object v0, Lcom/android/email/SecurityReceiver;->TAG:Ljava/lang/String;

    const-string v1, "handlePasswordRecovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/email/SecurityReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityReceiver;->mAdminName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/email/SecurityReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityReceiver;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v0, p0, Lcom/android/email/SecurityReceiver;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityReceiver;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/SecurityReceiver;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityReceiver;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->setAdminPermissions(Landroid/content/ComponentName;)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityReceiver;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityReceiver;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/android/email/SecurityReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/email/SecurityReceiver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/SecurityReceiver;->mController:Lcom/android/email/Controller;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.security.intent.action.PASSWORD_RECOVERY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/email/SecurityReceiver;->handlePasswordRecovery()V

    :cond_0
    return-void
.end method
