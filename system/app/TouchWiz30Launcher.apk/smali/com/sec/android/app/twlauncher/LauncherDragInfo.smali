.class public Lcom/sec/android/app/twlauncher/LauncherDragInfo;
.super Ljava/lang/Object;
.source "LauncherDragInfo.java"


# instance fields
.field private mDelayRemovingFromSourceWhenDrop:Z

.field private mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

.field private mIsLauncherAppWidgetInfo:Z

.field private mRunForDelayedRemoving:Ljava/lang/Runnable;

.field private mRunForDelayedRemovingReverted:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemoving:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemovingReverted:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "draggingItemInfo should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ItemInfo;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemoving:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mRunForDelayedRemovingReverted:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "draggingItemInfo should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    iput-boolean p2, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mIsLauncherAppWidgetInfo:Z

    return-void
.end method


# virtual methods
.method public getDragSource()Lcom/sec/android/app/twlauncher/DragSource;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    return-object v0
.end method

.method public getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDraggingItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;

    return-object v0
.end method

.method public isLauncherAppWidgetInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mIsLauncherAppWidgetInfo:Z

    return v0
.end method

.method public setDelayRemovingFromSourceWhenDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    return-void
.end method

.method public setDragSource(Lcom/sec/android/app/twlauncher/DragSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    return-void
.end method

.method public shouldDelayRemovingFromSourceWhenDrop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->mDelayRemovingFromSourceWhenDrop:Z

    return v0
.end method
