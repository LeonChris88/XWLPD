.class public Lcom/sec/android/glview/TwGLAniBitmapTexture;
.super Lcom/sec/android/glview/TwGLAniTexture;
.source "TwGLAniBitmapTexture.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object p6, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object p4, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
