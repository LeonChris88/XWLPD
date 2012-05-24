.class Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SceneGraph"
.end annotation


# instance fields
.field mGeometriesToResend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeSelf:I

.field mPreloadShaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ShaderProgram;",
            ">;"
        }
    .end annotation
.end field

.field mShadersToResend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ShaderProgram;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Surface;",
            ">;"
        }
    .end annotation
.end field

.field mSurfacesToResend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfaces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mPreloadShaders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeInit()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mNativeSelf:I

    return v0
.end method

.method static native nativeClassInit()V
.end method

.method private native nativeFinalize()V
.end method

.method private native replaceGeometry(IIIII)V
.end method

.method private native replaceShaderProgram(II)V
.end method

.method private native replaceTexture(II)V
.end method


# virtual methods
.method public addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method native nativeInit()V
.end method

.method public preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mPreloadShaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public recycle()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeFinalize()V

    return-void
.end method

.method native renderQuads(I)V
.end method

.method resendGeometries(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 8

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->uploadIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v2

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$500(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v3

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$600(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v4

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$700(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->replaceGeometry(IIIII)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resendShaderPrograms(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 4

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ShaderProgram;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->create(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    iget v3, v2, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->replaceShaderProgram(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resendSurfaces()V
    .locals 4

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    iget v3, v2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->replaceTexture(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
