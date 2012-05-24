.class public Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceSurface"
.end annotation


# instance fields
.field private mResourceId:I

.field private mResources:Landroid/content/res/Resources;

.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResources:Landroid/content/res/Resources;

    iput p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mScaleFactor:F

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mScaleFactor:F

    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    return-void
.end method


# virtual methods
.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mScaleFactor:F

    return v0
.end method

.method protected declared-synchronized preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$900()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode requested resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
