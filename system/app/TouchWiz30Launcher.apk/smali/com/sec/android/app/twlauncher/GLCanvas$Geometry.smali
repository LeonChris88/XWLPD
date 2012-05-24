.class public Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
.super Ljava/lang/Object;
.source "GLCanvas.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Geometry"
.end annotation


# instance fields
.field private mComponentCount:I

.field private mCount:I

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mIndexVBO:I

.field private mUploadNeeded:Z

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexVBO:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I

    return v0
.end method


# virtual methods
.method public onContextLost()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    return-void
.end method

.method public put([F[SI)V
    .locals 3

    const/4 v2, 0x0

    iput p3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mComponentCount:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    array-length v1, p2

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    return-void
.end method

.method uploadIfNeeded(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 8

    const v7, 0x88e4

    const/4 v6, 0x2

    const v5, 0x8893

    const v4, 0x8892

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mUploadNeeded:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-array v0, v6, [I

    invoke-static {v6, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v0, v3

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V

    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexVBO:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexVBO:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v5, v1, v2, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :cond_1
    return-void
.end method
