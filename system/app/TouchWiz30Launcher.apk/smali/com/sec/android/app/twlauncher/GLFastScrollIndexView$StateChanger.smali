.class Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;
.super Ljava/lang/Object;
.source "GLFastScrollIndexView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateChanger"
.end annotation


# instance fields
.field private mRunning:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    return v0
.end method

.method public postToQueue(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    return-void
.end method
