.class public Lcom/sec/android/app/twlauncher/CustomViewFlipper;
.super Ljava/lang/Object;
.source "CustomViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;,
        Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;,
        Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;
    }
.end annotation


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mB1:Landroid/graphics/Bitmap;

.field private mB2:Landroid/graphics/Bitmap;

.field private mBackColor:I

.field private mBackPaint:Landroid/graphics/Paint;

.field mFlipPhases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimating:Z

.field private mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackColor:I

    return-void
.end method

.method private centerRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private drawPhases(Landroid/graphics/Canvas;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gtz p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x190

    if-gt v1, p2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt p2, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->intermediateState(Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;I)Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    iget v1, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawStill(Landroid/graphics/Canvas;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getCurrentRect(I)Landroid/graphics/Rect;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    const/16 v1, 0x190

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt p1, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->intermediateState(Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;I)Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getProgress()I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private intermediateState(Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;I)Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;
    .locals 10

    iget v0, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt p3, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt v0, p3, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget-object v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateRect(Landroid/graphics/Rect;ILandroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v9

    iget v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v8

    iget v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v7

    iget v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v5

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-object v1, p0

    move-object v2, v9

    move v3, v8

    move v4, v7

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    move-object p1, v0

    goto :goto_0
.end method

.method private interpolateInt(IIIII)I
    .locals 2

    sub-int v0, p4, p5

    mul-int/2addr v0, p1

    sub-int v1, p5, p2

    mul-int/2addr v1, p3

    add-int/2addr v0, v1

    sub-int v1, p4, p2

    div-int/2addr v0, v1

    return v0
.end method

.method private interpolateRect(Landroid/graphics/Rect;ILandroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 7

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    return-object v6
.end method

.method private prepareEnlarge(Landroid/graphics/Rect;)V
    .locals 13

    const/16 v3, 0xc0

    const/16 v4, 0xff

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, p1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v11, 0x60

    const/16 v12, 0x10a

    move-object v7, p0

    move v9, v4

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v12, 0x190

    move-object v7, p0

    move v9, v5

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareFlip()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getCurrentRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareShrink(Landroid/graphics/Rect;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mStartTime:J

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareEnlarge(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareTransfer(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private prepareShrink(Landroid/graphics/Rect;)V
    .locals 13

    const/16 v10, 0x80

    const/16 v4, 0xff

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, p1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v3, 0xc0

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v12, 0x10a

    move-object v7, p0

    move v9, v4

    move v11, v10

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v12, 0x190

    move-object v7, p0

    move v9, v5

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareTransfer(Landroid/graphics/Rect;)V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object v2, p1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {p0, v2, v11}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->centerRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v3, 0xc0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v6, 0xff

    const/16 v7, 0x80

    const/16 v8, 0x80

    const/16 v9, 0xc8

    move-object v4, p0

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v6, 0xc0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0x190

    move-object v4, p0

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawStill(Landroid/graphics/Canvas;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getProgress()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawPhases(Landroid/graphics/Canvas;I)V

    const/16 v1, 0x190

    if-gt v1, v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized end()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;->onCustomFlipEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flipTo(Landroid/graphics/Bitmap;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "CustomViewFlipper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flipTo: invalid bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bitmap copy failed!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    :goto_2
    if-eqz v1, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareFlip()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;->onCustomFlipStart()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_8
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
