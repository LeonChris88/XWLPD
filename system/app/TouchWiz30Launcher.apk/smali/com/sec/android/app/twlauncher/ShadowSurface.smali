.class Lcom/sec/android/app/twlauncher/ShadowSurface;
.super Ljava/lang/Object;
.source "ShadowSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;
    }
.end annotation


# static fields
.field private static mLastRetainedObjects:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;",
            ">;"
        }
    .end annotation
.end field

.field private static sShaders:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;


# instance fields
.field private mHeight:F

.field private mIntermediate:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

.field private mResult:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

.field private mWidth:F


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v1, 0x40

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-direct {v0, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mIntermediate:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-direct {v0, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mResult:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    return-void
.end method

.method private getShaders(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;
    .locals 2

    sget-object v0, Lcom/sec/android/app/twlauncher/ShadowSurface;->sShaders:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mLastRetainedObjects:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mLastRetainedObjects:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/ShadowSurface;->sShaders:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mLastRetainedObjects:Ljava/lang/ref/WeakReference;

    :cond_1
    sget-object v0, Lcom/sec/android/app/twlauncher/ShadowSurface;->sShaders:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;FF)V
    .locals 8

    const/high16 v1, 0x3d40

    iget v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mWidth:F

    mul-float v6, v1, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mHeight:F

    mul-float v7, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mResult:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    sub-float v2, p2, v6

    sub-float v3, p3, v7

    iget v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mWidth:F

    add-float/2addr v0, p2

    add-float v4, v0, v6

    iget v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mHeight:F

    add-float/2addr v0, p3

    add-float v5, v0, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mResult:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    return-void
.end method

.method public update(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mWidth:F

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mHeight:F

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mIntermediate:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->newFrame(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/ShadowSurface;->getShaders(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;->mBlur1:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mIntermediate:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mIntermediate:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p2

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mResult:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->newFrame(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/ShadowSurface;->getShaders(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;->mBlur2:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mIntermediate:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mResult:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->getWidth()I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ShadowSurface;->mResult:Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;->getHeight()I

    move-result v3

    int-to-float v5, v3

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    return-void
.end method
