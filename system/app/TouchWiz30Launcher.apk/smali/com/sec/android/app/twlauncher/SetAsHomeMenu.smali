.class public Lcom/sec/android/app/twlauncher/SetAsHomeMenu;
.super Landroid/widget/FrameLayout;
.source "SetAsHomeMenu.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_0
    invoke-virtual {v6, p1, p0, v8, v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v7

    :cond_1
    return v7
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SetAsHomeMenu;->mBackgroundSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    goto :goto_0
.end method
