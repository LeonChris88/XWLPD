.class public Lcom/sec/android/app/twlauncher/GLScrollBars;
.super Ljava/lang/Object;
.source "GLScrollBars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLScrollBars$BaseFadingEdgeShader;
    }
.end annotation


# instance fields
.field private mColorBlue:F

.field private mColorGreen:F

.field private mColorRed:F

.field private mFadeDelay:I

.field private mFadeDuration:I

.field private mFadeStart:J

.field private mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field private mHorizontalSize:I

.field private mOpacity:F

.field private mPadding:I

.field private mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

.field private mVerticalSize:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$1;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$2;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v5, 0xff

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$1;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$2;-><init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLScrollBars:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setHorizontalHeight(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setVerticalWidth(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setPadding(I)V

    const/4 v1, 0x3

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLScrollBars;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private calculateOpacity()F
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    const/high16 v3, 0x3f80

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDelay:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    sub-long v4, v1, v4

    long-to-int v0, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    if-lt v0, v4, :cond_2

    const/4 v3, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f80

    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeDuration:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    if-lez v1, :cond_1

    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v3, 0x0

    if-lez p4, :cond_2

    if-ge p4, p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->calculateOpacity()F

    move-result v2

    cmpl-float v7, v2, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    sub-int v6, v7, v8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v7, v4

    int-to-float v8, p4

    mul-float/2addr v7, v8

    int-to-float v8, p2

    div-float v0, v7, v8

    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float v5, v7, v8

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    mul-int/lit8 v1, v7, 0x2

    int-to-float v7, v1

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    int-to-float v0, v1

    :cond_0
    add-float v7, v5, v0

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    int-to-float v7, v4

    sub-float v5, v7, v0

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    mul-float/2addr v10, v2

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    int-to-float v7, v6

    add-float v8, v5, v0

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    invoke-virtual {p1, v5, v7, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    const/4 v3, 0x1

    :cond_2
    return v3

    :cond_3
    cmpg-float v7, v5, v9

    if-gez v7, :cond_1

    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    goto :goto_0
.end method

.method public drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z
    .locals 11

    const/4 v3, 0x0

    if-lez p4, :cond_2

    if-ge p4, p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->calculateOpacity()F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    sub-int v5, v7, v8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v7, v4

    int-to-float v8, p4

    mul-float/2addr v7, v8

    int-to-float v8, p2

    div-float v0, v7, v8

    int-to-float v7, v4

    sub-float/2addr v7, v0

    int-to-float v8, p3

    mul-float/2addr v7, v8

    sub-int v8, p2, p4

    int-to-float v8, v8

    div-float v6, v7, v8

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    mul-int/lit8 v1, v7, 0x2

    int-to-float v7, v1

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    int-to-float v0, v1

    :cond_0
    add-float v7, v6, v0

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    int-to-float v7, v4

    sub-float v6, v7, v0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    mul-float/2addr v10, v2

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    int-to-float v7, v5

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    add-int/2addr v8, v5

    int-to-float v8, v8

    add-float v9, v6, v0

    invoke-virtual {p1, v7, v6, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I[F[I)Z
    .locals 18

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p4, v2

    add-int v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p4, v2

    add-int v11, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aget v2, p4, v2

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    aget v2, p4, v2

    add-int/2addr v1, v2

    add-int v16, v16, v1

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    :cond_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001c

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v13

    add-int v1, v14, v13

    sub-int v2, v15, v13

    if-le v1, v2, :cond_2

    sub-int v1, v15, v14

    div-int/lit8 v13, v1, 0x2

    :cond_2
    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/4 v1, 0x0

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    add-int v1, v14, v13

    int-to-float v5, v1

    int-to-float v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    add-int v1, v14, v13

    int-to-float v5, v1

    int-to-float v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_4
    const/4 v1, 0x2

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/4 v1, 0x2

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    sub-int v1, v15, v13

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    int-to-float v6, v11

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    sub-int v1, v15, v13

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    int-to-float v6, v11

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_6
    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_7

    const/4 v1, 0x3

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    :cond_7
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    if-nez v1, :cond_8

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020075

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v1, v16, v17

    sub-int v2, v11, v17

    if-le v1, v2, :cond_9

    sub-int v1, v11, v16

    div-int/lit8 v17, v1, 0x2

    :cond_9
    const/4 v1, 0x1

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/4 v1, 0x1

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    add-int v1, v16, v17

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    add-int v1, v16, v17

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_b
    const/4 v1, 0x3

    aget v1, p3, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/4 v1, 0x3

    aget v1, p3, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    sub-int v1, v11, v17

    int-to-float v4, v1

    int-to-float v5, v15

    int-to-float v6, v11

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalEdgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    int-to-float v3, v14

    sub-int v1, v11, v17

    int-to-float v4, v1

    int-to-float v5, v15

    int-to-float v6, v11

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_d
    return v12
.end method

.method public isHorizontalScrollBarDrawing()Z
    .locals 4

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarDrawing()Z
    .locals 4

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mFadeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2

    const/high16 v1, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorRed:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorGreen:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mColorBlue:F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mOpacity:F

    return-void
.end method

.method public setHorizontalHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalSize:I

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mPadding:I

    return-void
.end method

.method public setVerticalWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalSize:I

    return-void
.end method

.method public startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z
    .locals 17

    const/4 v8, 0x0

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x3

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    :cond_0
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p3, v2

    add-int v14, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p3, v2

    add-int v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aget v2, p3, v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x1

    aget v2, p3, v2

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v16

    add-int v1, v15, v16

    sub-int v2, v7, v16

    if-le v1, v2, :cond_1

    sub-int v1, v7, v15

    div-int/lit8 v16, v1, 0x2

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v10

    add-int v1, v12, v10

    sub-int v2, v14, v10

    if-le v1, v2, :cond_2

    sub-int v1, v14, v12

    div-int/lit8 v10, v1, 0x2

    :cond_2
    new-instance v13, Landroid/graphics/RectF;

    int-to-float v1, v12

    int-to-float v2, v15

    int-to-float v3, v14

    int-to-float v4, v7

    invoke-direct {v13, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v11, Landroid/graphics/RectF;

    add-int v1, v12, v10

    int-to-float v1, v1

    add-int v2, v15, v16

    int-to-float v2, v2

    sub-int v3, v14, v10

    int-to-float v3, v3

    sub-int v4, v7, v16

    int-to-float v4, v4

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v11

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    const/4 v1, 0x3

    aget v1, p2, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mVerticalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    const-string v1, "strength"

    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v1

    int-to-float v9, v1

    const-string v2, "edges"

    iget v1, v13, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v9, v1

    iget v1, v11, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v9, v1

    iget v1, v11, Landroid/graphics/RectF;->top:F

    sub-float v5, v9, v1

    iget v1, v13, Landroid/graphics/RectF;->top:F

    sub-float v6, v9, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FFFF)V

    :cond_4
    :goto_0
    return v8

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLScrollBars;->mHorizontalScrollFadeShader:Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    const-string v1, "strength"

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FF)V

    const-string v2, "edges"

    iget v3, v13, Landroid/graphics/RectF;->left:F

    iget v4, v11, Landroid/graphics/RectF;->left:F

    iget v5, v11, Landroid/graphics/RectF;->right:F

    iget v6, v13, Landroid/graphics/RectF;->right:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;FFFF)V

    goto :goto_0
.end method
