.class public Lcom/seven/Z7/app/Z7CommonListener;
.super Ljava/lang/Object;
.source "Z7CommonListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/seven/Z7/app/Z7CommonListener;


# instance fields
.field private final ACTION_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field protected mApp:Lcom/android/email/Email;

.field protected mListener:Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "action"

    iput-object v0, p0, Lcom/seven/Z7/app/Z7CommonListener;->ACTION_KEY:Ljava/lang/String;

    const-string v0, "Z7CommonListener"

    iput-object v0, p0, Lcom/seven/Z7/app/Z7CommonListener;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/Z7CommonListener;->mApp:Lcom/android/email/Email;

    new-instance v0, Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;

    invoke-static {}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getUIActionHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;-><init>(Lcom/seven/Z7/app/Z7CommonListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7CommonListener;->mListener:Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;

    iget-object v0, p0, Lcom/seven/Z7/app/Z7CommonListener;->mApp:Lcom/android/email/Email;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7CommonListener;->mListener:Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;

    invoke-virtual {v0, v1}, Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/seven/Z7/app/Z7CommonListener;
    .locals 1

    sget-object v0, Lcom/seven/Z7/app/Z7CommonListener;->instance:Lcom/seven/Z7/app/Z7CommonListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/seven/Z7/app/Z7CommonListener;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7CommonListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/seven/Z7/app/Z7CommonListener;->instance:Lcom/seven/Z7/app/Z7CommonListener;

    :cond_0
    sget-object v0, Lcom/seven/Z7/app/Z7CommonListener;->instance:Lcom/seven/Z7/app/Z7CommonListener;

    return-object v0
.end method


# virtual methods
.method public unRegisterListener()V
    .locals 2

    const-string v0, "Z7CommonListener"

    const-string v1, "unRegisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/seven/Z7/app/Z7CommonListener;->mApp:Lcom/android/email/Email;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7CommonListener;->mListener:Lcom/seven/Z7/app/Z7CommonListener$MyServiceListener;

    invoke-virtual {v0, v1}, Lcom/android/email/Email;->unregisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    return-void
.end method
