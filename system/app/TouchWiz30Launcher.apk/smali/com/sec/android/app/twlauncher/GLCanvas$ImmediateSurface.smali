.class Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateSurface"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;->upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V

    return-void
.end method
