.class public Lcom/sec/android/app/twlauncher/GLListView;
.super Landroid/widget/ListView;
.source "GLListView.java"

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

.field private mMaxHeight:I

.field private mPaddingOffset:[I

.field private mRequestFramePending:Z

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GLListView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

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

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLGridView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setBackgroundColor(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDividerThickness(I)V

    const/4 v1, 0x6

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDividerColor(I)V

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDrawSelectorOnTop(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setMaxHeight(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setVerticalSpacing(I)V

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

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getSelector()Landroid/graphics/drawable/Drawable;

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

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v5, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    :cond_0
    return-void
.end method

.method private setHorizontalDividerHeight()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setRequestFramePending()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getTopFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getBottomFadingEdgeStrength()F

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    aget v1, v1, v5

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    const/4 v3, 0x0

    aput v3, v2, v5

    aput v3, v1, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->isPaddingOffsetRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getTopPaddingOffset()I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getBottomPaddingOffset()I

    move-result v2

    aput v2, v1, v5

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mFadingEdgeStrength:[F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mPaddingOffset:[I

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    :cond_2
    return v0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 29

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_0
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateClipRegion(Landroid/view/View;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getListPaddingLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getWidth()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getListPaddingRight()I

    move-result v26

    sub-int v16, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v24, v25, 0x2

    const v23, 0x7fffffff

    const/high16 v22, -0x8000

    const v20, 0x7fffffff

    const/high16 v19, -0x8000

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLListView;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/twlauncher/GLListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v25, 0x8

    move/from16 v0, v25

    if-eq v10, v0, :cond_9

    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object v13, v0

    invoke-virtual {v5}, Landroid/view/View;->computeScroll()V

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v25, v0

    if-lez v25, :cond_1

    move/from16 v17, v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    add-int v22, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v25, v0

    add-int v17, v22, v25

    int-to-float v0, v15

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move/from16 v23, v17

    :cond_1
    move/from16 v22, v6

    move/from16 v20, v7

    :cond_2
    move/from16 v19, v8

    move/from16 v0, v20

    if-ge v7, v0, :cond_3

    move/from16 v20, v7

    :cond_3
    move/from16 v0, v23

    if-ge v9, v0, :cond_4

    move/from16 v23, v9

    :cond_4
    move/from16 v0, v22

    if-le v6, v0, :cond_5

    move/from16 v22, v6

    :cond_5
    if-nez v10, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v25

    if-nez v25, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v25

    if-eqz v25, :cond_a

    :cond_6
    const/16 v21, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v25

    sub-int v25, v7, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v26

    sub-int v26, v9, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/twlauncher/GLListView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v25

    or-int v18, v18, v25

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/twlauncher/GLListView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v21, 0x0

    goto :goto_1

    :catch_0
    move-exception v12

    sget-object v25, Lcom/sec/android/app/twlauncher/GLListView;->LOG_TAG:Ljava/lang/String;

    const-string v26, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isHorizontalScrollBarDrawing()Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollRange()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollOffset()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollExtent()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v25

    or-int v18, v18, v25

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isVerticalScrollBarDrawing()Z

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollRange()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollOffset()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollExtent()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v25

    or-int v18, v18, v25

    :cond_d
    return v18
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListView;->invalidate()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->invalidate(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, -0x8000

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    if-lez v2, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    if-ge v2, v1, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    const/high16 v1, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    invoke-super {p0, p1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 2

    const/high16 v1, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    return-void
.end method

.method public setDividerThickness(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    invoke-super {p0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    return-void
.end method
