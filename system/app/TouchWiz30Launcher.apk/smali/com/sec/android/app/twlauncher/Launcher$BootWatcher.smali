.class Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BootWatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;J)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->mLauncher:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5200(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getGLSurfaceViewGroup()Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->unblockDispatchDraw()V

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$5202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    :cond_0
    return-void
.end method
