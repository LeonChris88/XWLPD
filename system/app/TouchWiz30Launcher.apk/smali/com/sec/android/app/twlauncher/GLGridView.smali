.class public Lcom/sec/android/app/twlauncher/GLGridView;
.super Landroid/widget/GridView;
.source "GLGridView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBgBlue:F

.field private mBgGreen:F

.field private mBgOpacity:F

.field private mBgRed:F

.field private mDividerBlue:F

.field private mDividerGreen:F

.field private mDividerOpacity:F

.field private mDividerRed:F

.field private mDividerThickness:I

.field private mDrawSelectorOnTop:Z

.field private mFadingEdgeStrength:[F

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mHDividerHeight:I

.field private mHorizontalSpacing:I

.field private mMaxHeight:I

.field private mPaddingOffset:[I

.field private mRequestFramePending:Z

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mVDividerWidth:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GLGridView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLGridView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLGridView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setBackgroundColor(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDividerThickness(I)V

    const/4 v1, 0x6

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDividerColor(I)V

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDrawSelectorOnTop(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalSpacing(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setMaxHeight(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalSpacing(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v5, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    :cond_0
    return-void
.end method

.method private drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V
    .locals 10

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    add-int v1, p6, v6

    sub-int v6, p3, p6

    sub-int/2addr v6, v1

    invoke-static {v6, p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, p2

    :goto_0
    if-gt v3, v2, :cond_1

    add-int v6, v3, v1

    if-lt v6, p4, :cond_0

    add-int v6, v3, p6

    add-int v4, v6, v5

    int-to-float v6, v4

    move/from16 v0, p7

    int-to-float v7, v0

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    move/from16 v0, p8

    int-to-float v9, v0

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setHorizontalDividerHeight()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setRequestFramePending()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setVerticalDividerWidth()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getTopFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getBottomFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    const/4 v3, 0x0

    aput v3, v2, v5

    aput v3, v1, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->isPaddingOffsetRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getTopPaddingOffset()I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getBottomPaddingOffset()I

    move-result v2

    aput v2, v1, v5

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mFadingEdgeStrength:[F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mPaddingOffset:[I

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    :cond_2
    return v0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 30

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getChildCount()I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateClipRegion(Landroid/view/View;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getListPaddingRight()I

    move-result v3

    sub-int v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v28, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    if-lez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getStretchMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const/16 v27, 0x1

    :goto_0
    const v9, 0x7fffffff

    const/high16 v10, -0x8000

    const v25, 0x7fffffff

    const/high16 v7, -0x8000

    const/high16 v24, -0x8000

    const/4 v8, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLGridView;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v16

    const/16 v2, 0x8

    move/from16 v0, v16

    if-eq v0, v2, :cond_c

    :try_start_0
    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object/from16 v20, v0

    invoke-virtual {v11}, Landroid/view/View;->computeScroll()V

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int v8, v14, v13

    move/from16 v0, v24

    if-ge v13, v0, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    if-gtz v2, :cond_1

    if-eqz v27, :cond_4

    :cond_1
    move/from16 v22, v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    if-lez v2, :cond_2

    add-int v10, v10, v28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    add-int v22, v10, v2

    int-to-float v2, v4

    int-to-float v3, v10

    int-to-float v6, v5

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    :cond_2
    if-eqz v27, :cond_3

    if-eqz v19, :cond_e

    move/from16 v6, v25

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/twlauncher/GLGridView;->drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move/from16 v9, v22

    :cond_4
    const/16 v19, 0x0

    move v10, v12

    move/from16 v25, v13

    :cond_5
    move v7, v13

    move/from16 v24, v14

    move/from16 v0, v25

    if-ge v13, v0, :cond_6

    move/from16 v25, v13

    :cond_6
    if-ge v15, v9, :cond_7

    move v9, v15

    :cond_7
    if-le v12, v10, :cond_8

    move v10, v12

    :cond_8
    if-nez v16, :cond_c

    invoke-virtual {v11}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_9
    const/16 v26, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v3, v15, v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sec/android/app/twlauncher/GLGridView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    :cond_a
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v2

    or-int v23, v23, v2

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sec/android/app/twlauncher/GLGridView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_e
    move v6, v4

    goto :goto_2

    :cond_f
    const/16 v26, 0x0

    goto :goto_3

    :catch_0
    move-exception v18

    sget-object v2, Lcom/sec/android/app/twlauncher/GLGridView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    if-eqz v27, :cond_11

    if-lez v8, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v4

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/twlauncher/GLGridView;->drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isHorizontalScrollBarDrawing()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollRange()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollExtent()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v2, v0, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v2

    or-int v23, v23, v2

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isVerticalScrollBarDrawing()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollExtent()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v2, v0, v3, v6, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v2

    or-int v23, v23, v2

    :cond_13
    return v23
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/GridView;->invalidate()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->invalidate(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridView;->invalidate(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, -0x8000

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    if-lez v2, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    if-ge v2, v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    const/high16 v1, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    invoke-super {p0, p1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 2

    const/high16 v1, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    return-void
.end method

.method public setDividerThickness(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    invoke-super {p0, p1}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    return-void
.end method
