.class public Landroid/webkit/HTML5VideoInline;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoInline.java"


# static fields
.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mVideoLayerUsingSurfaceTexture:I


# instance fields
.field private mTextureNames:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HTML5VideoInline;->init(IIZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    return-void
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getVideoLayerId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_1
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_2
    sput p1, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureName()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    :cond_0
    return v0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getPauseDuringPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    :cond_0
    return-void
.end method

.method public surfaceTextureDeleted()Z
    .locals 1

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
