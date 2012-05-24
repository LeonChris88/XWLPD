.class public Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.super Ljava/lang/Object;
.source "GLCanvas.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Surface"
.end annotation


# instance fields
.field protected mHeight:I

.field private mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

.field protected mTextureId:I

.field protected mWidth:I

.field protected temp:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    return-void
.end method


# virtual methods
.method protected bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 1

    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;I)V

    return-void
.end method

.method protected bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;I)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x46180400

    const/16 v2, 0xde1

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->access$1000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move-object v1, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->queueTexture(I)V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    return v0
.end method

.method public onContextLost()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    return-void
.end method

.method protected preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 0

    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    return-void
.end method

.method protected upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attempting to upload a recycled bitmap."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v0, 0x2

    const/4 v1, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :goto_0
    :try_start_1
    invoke-static {v3}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-static {v3}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v4

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v5, 0x47012f00

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v5, 0x47012f00

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object v3, p2

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v3, p2

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
