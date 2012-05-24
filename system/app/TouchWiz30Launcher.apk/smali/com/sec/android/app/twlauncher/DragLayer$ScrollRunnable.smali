.class Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field private mIsQueued:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/DragLayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    return-void
.end method


# virtual methods
.method public isQueued()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->clearPendingDragScroll()V

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollLeft()V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    return-void
.end method

.method public setIsQueued(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->this$0:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragScroller;->clearPendingDragScroll()V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mIsQueued:Z

    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v1, :cond_2

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/DragScroller;->setPendingDragScroll(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/DragScroller;->setPendingDragScroll(I)V

    goto :goto_0
.end method
