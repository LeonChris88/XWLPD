.class public Lcom/sec/android/app/twlauncher/MenuDrawer;
.super Landroid/widget/FrameLayout;
.source "MenuDrawer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# instance fields
.field private mChildSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSkiaCanvas:Landroid/graphics/Canvas;

.field private mSurfaceUploadNeeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mChildSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mSkiaCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mSurfaceUploadNeeded:Z

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setAnimationCacheEnabled(Z)V

    return-void
.end method

.method public setBackgroundImage()V
    .locals 0

    return-void
.end method

.method public setEnabledProgress(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
