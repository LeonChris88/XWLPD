.class public Landroid/app/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# static fields
.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final SHUTDOWN_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"


# instance fields
.field private MAX_IMAGECOUNT:I

.field private buf:[I

.field private cntImages:I

.field private handle:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mImages:Landroid/graphics/Bitmap;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRunOnAnimationEnd:Ljava/lang/Runnable;

.field private mShutdownView:Landroid/widget/ImageView;

.field private mViewUpdateHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0xc8

    iput v0, p0, Landroid/app/ShutdownDialog;->MAX_IMAGECOUNT:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ShutdownDialog;->cntImages:I

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/app/ShutdownDialog;)I
    .locals 1

    iget v0, p0, Landroid/app/ShutdownDialog;->handle:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/ShutdownDialog;)[I
    .locals 1

    iget-object v0, p0, Landroid/app/ShutdownDialog;->buf:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/ShutdownDialog;)I
    .locals 1

    iget v0, p0, Landroid/app/ShutdownDialog;->width:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/ShutdownDialog;)I
    .locals 1

    iget v0, p0, Landroid/app/ShutdownDialog;->height:I

    return v0
.end method

.method static synthetic access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/ShutdownDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v2, "ShutdownDialog"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p0}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/app/ShutdownDialog;->setContentView(Landroid/view/View;)V

    const-string v2, "//system/media/video/shutdown/shutdown.qmg"

    invoke-static {v2}, Landroid/app/LibQmg;->qmgOpen(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->handle:I

    iget v2, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v2}, Landroid/app/LibQmg;->qmgGetWidth(I)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->width:I

    iget v2, p0, Landroid/app/ShutdownDialog;->handle:I

    invoke-static {v2}, Landroid/app/LibQmg;->qmgGetHeight(I)I

    move-result v2

    iput v2, p0, Landroid/app/ShutdownDialog;->height:I

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/ShutdownDialog;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/ShutdownDialog;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/app/ShutdownDialog;->width:I

    iget v3, p0, Landroid/app/ShutdownDialog;->height:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/ShutdownDialog;->buf:[I

    new-instance v2, Landroid/app/ShutdownDialog$1;

    invoke-direct {v2, p0}, Landroid/app/ShutdownDialog$1;-><init>(Landroid/app/ShutdownDialog;)V

    iput-object v2, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    :goto_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v1, p0, Landroid/app/ShutdownDialog;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    :cond_1
    return-void

    :cond_2
    const-string v1, "ShutdownDialog"

    const-string v2, "StatusBarManager == null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ShutdownDialog;->mHasStarted:Z

    return-void
.end method

.method public setOnAnimationEnd(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;

    return-void
.end method
