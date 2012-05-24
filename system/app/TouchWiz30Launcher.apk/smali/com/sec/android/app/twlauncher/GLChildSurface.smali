.class Lcom/sec/android/app/twlauncher/GLChildSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.source "GLChildSurface.java"


# instance fields
.field mInvalidated:Z

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    return-void
.end method

.method public declared-synchronized onContextLost()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->onContextLost()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postUploadIfNeeded()V
    .locals 5

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUpload(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLChildSurface;->mInvalidated:Z

    :cond_0
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    return-void
.end method
