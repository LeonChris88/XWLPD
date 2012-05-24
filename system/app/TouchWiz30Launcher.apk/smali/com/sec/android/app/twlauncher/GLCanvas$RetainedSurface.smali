.class public Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainedSurface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;
    }
.end annotation


# static fields
.field private static final DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

.field protected mUploadNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sput-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onContextLost()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->onContextLost()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized postUpload(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;
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
