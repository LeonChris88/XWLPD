.class Lcom/sec/android/app/twlauncher/GLEasySurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.source "GLEasySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/RectF;

.field private mInvalidated:Z

.field private mLoc:Landroid/graphics/RectF;

.field private mLstnrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;",
            ">;"
        }
    .end annotation
.end field

.field private mViewForInvalidate:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addOnDrawLstnr(Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->postUploadIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method public drawView(Landroid/graphics/Canvas;Landroid/view/View;FF)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLoc()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_0
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

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V
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
    .locals 9

    const/high16 v7, 0x3f80

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v6, v5, v7

    if-ltz v6, :cond_0

    cmpg-float v6, v2, v7

    if-ltz v6, :cond_0

    float-to-int v6, v5

    float-to-int v7, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLstnrs:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;

    invoke-interface {v6, p0, v1}, Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;->onDraw(Lcom/sec/android/app/twlauncher/GLEasySurface;Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->postUpload(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mInvalidated:Z

    goto :goto_0
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->postUploadIfNeeded()V

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    return-void
.end method

.method public setLoc(FFFF)V
    .locals 4

    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    sub-float v0, p3, p1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    sub-float v0, p4, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mLoc:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V

    goto :goto_0
.end method

.method public setLoc(Landroid/graphics/RectF;)V
    .locals 4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLEasySurface;->setLoc(FFFF)V

    return-void
.end method

.method public setViewForInvalidate(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLEasySurface;->mViewForInvalidate:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V

    return-void
.end method
