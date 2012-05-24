.class public Lcom/sec/android/app/twlauncher/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public colorHandle:I

.field public geometryHandle:I

.field public prog:I

.field public projectionHandle:I

.field public rectHandle:I

.field public surfaceHandle:I

.field public transformHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ShaderProgram"

    sput-object v0, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->geometryHandle:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->rectHandle:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->transformHandle:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->projectionHandle:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->surfaceHandle:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->colorHandle:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/sec/android/app/twlauncher/ShaderProgram;->loadShader(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/ShaderProgram;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/ShaderProgram;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v6, [I

    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    sget-object v4, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    :cond_0
    return v1
.end method


# virtual methods
.method public attribLocation(Ljava/lang/String;)I
    .locals 4

    iget v1, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get attrib location of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public create(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getVertexSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getFragmentSource()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    const-string v0, "aGeometry"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->attribLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->geometryHandle:I

    const-string v0, "uTransform"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->transformHandle:I

    const-string v0, "uProjection"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->projectionHandle:I

    const-string v0, "uRect"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->rectHandle:I

    const-string v0, "surface"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->surfaceHandle:I

    const-string v0, "uColor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->uniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->colorHandle:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V

    goto :goto_0
.end method

.method protected getAdditionalVertexSourceHeader()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getFragmentSource()Ljava/lang/String;
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 vTex;\nuniform sampler2D surface;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = texture2D(surface, vTex)*uColor;\n}\n"

    return-object v0
.end method

.method protected getPostTransformSource()Ljava/lang/String;
    .locals 1

    const-string v0, "void postTransform(inout vec4 pos) {\n}\n"

    return-object v0
.end method

.method public getTransformType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getVertexSource()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uniform mat4 uTransform;\nuniform mat4 uProjection;\nuniform vec4 uRect;\nuniform vec4 uTexRect;\nattribute vec3 aGeometry;\nvarying vec2 vTex;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getAdditionalVertexSourceHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getPostTransformSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vTex= aGeometry.xy*(uTexRect.zw-uTexRect.xy)+uTexRect.xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vec2 rectSpace = aGeometry.xy*(uRect.zw-uRect.xy)+uRect.xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vec4 transformed = uTransform*vec4(rectSpace, aGeometry.z, 1.);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  postTransform(transformed);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_Position = uProjection * transformed;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContextLost()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    return-void
.end method

.method public uniformLocation(Ljava/lang/String;)I
    .locals 4

    iget v1, p0, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/app/twlauncher/ShaderProgram;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get uniform location of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
