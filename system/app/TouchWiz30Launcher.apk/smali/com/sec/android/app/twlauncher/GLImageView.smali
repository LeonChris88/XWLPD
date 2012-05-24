.class public Lcom/sec/android/app/twlauncher/GLImageView;
.super Landroid/widget/ImageView;
.source "GLImageView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    return-void
.end method

.method private setReloadRequired()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLImageView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->setReloadRequired()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->invalidate(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->setReloadRequired()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidate(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLImageView;->setReloadRequired()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    const-string v0, "Launcher.GLImageView"

    const-string v1, "The scale type is being set to center on the image.  This may cause this ImageView to not draw properly"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
