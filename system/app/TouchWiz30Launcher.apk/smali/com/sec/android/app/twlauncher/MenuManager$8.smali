.class Lcom/sec/android/app/twlauncher/MenuManager$8;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsEnd:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1902(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->mIsEnd:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$8;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1902(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    return-void
.end method
