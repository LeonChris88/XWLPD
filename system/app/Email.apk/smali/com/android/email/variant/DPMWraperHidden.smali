.class public Lcom/android/email/variant/DPMWraperHidden;
.super Ljava/lang/Object;
.source "DPMWraperHidden.java"


# static fields
.field private static sInstance:Lcom/android/email/variant/DPMWraperHidden;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/variant/DPMWraperHidden;->sInstance:Lcom/android/email/variant/DPMWraperHidden;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/variant/DPMWraperHidden;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/variant/DPMWraperHidden;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;
    .locals 1

    sget-object v0, Lcom/android/email/variant/DPMWraperHidden;->sInstance:Lcom/android/email/variant/DPMWraperHidden;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/variant/DPMWraperHidden;

    invoke-direct {v0, p0}, Lcom/android/email/variant/DPMWraperHidden;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/variant/DPMWraperHidden;->sInstance:Lcom/android/email/variant/DPMWraperHidden;

    :cond_0
    sget-object v0, Lcom/android/email/variant/DPMWraperHidden;->sInstance:Lcom/android/email/variant/DPMWraperHidden;

    return-object v0
.end method


# virtual methods
.method public notifyChanges(Landroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/variant/DPMWraperHidden;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->notifyChanges(Landroid/content/ComponentName;Z)V

    return-void
.end method
