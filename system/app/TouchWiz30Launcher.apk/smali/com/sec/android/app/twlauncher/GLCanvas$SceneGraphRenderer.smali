.class Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SceneGraphRenderer"
.end annotation


# instance fields
.field private mFBO:I

.field private mGLObjects:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeRenderCache:I

.field private mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

.field private temp:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1200()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    return-object v0
.end method


# virtual methods
.method public addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method clearRenderTarget()V
    .locals 4

    const v3, 0x8d40

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v1, 0xde1

    invoke-static {v3, v0, v1, v2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1300(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onContextLost()V
    .locals 3

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;

    invoke-interface {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;->onContextLost()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mGLObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1300(I)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$1200()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    return-void
.end method

.method preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .locals 4

    iget-object v3, p1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mPreloadShaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ShaderProgram;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->create(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendSurfaces()V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendGeometries(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->resendShaderPrograms(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    return-void
.end method

.method render(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;II)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    const/16 v0, 0x900

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    const v0, 0x8d40

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->renderQuads(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->doCleanup()V

    return-void
.end method

.method renderQuads(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mNativeRenderCache:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->renderQuads(I)V

    return-void
.end method

.method setRenderTarget(III)V
    .locals 5

    const v3, 0x8d40

    const/4 v4, 0x0

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->temp:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->mFBO:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v3, v1, v2, p1, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_1

    const-string v1, "GLCanvas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framebuffer not complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v4, v4, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method
