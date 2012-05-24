.class public Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
.super Landroid/view/View;
.source "GLFastScrollIndexView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;,
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;,
        Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;
    }
.end annotation


# instance fields
.field private mAllowWiggle:Z

.field private mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mAlphaAnimDuration:I

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mCellHeight:F

.field private mCurrentIndex:I

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mFirstCharPreMatches:Z

.field private mIndexStr:Ljava/lang/String;

.field private mNormalAlpha:F

.field private mOverflowGrpSepChar:C

.field private mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

.field private mPressDelay:I

.field private mSelTextColor:I

.field private mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field private mTextColor:I

.field private mTextMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextUppercase:Z

.field private mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

.field private mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

.field private mTouchAlpha:F

.field private mUnpressDelay:I

.field private mWorkingStr:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    const/16 v0, 0x2e

    iput-char v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    const/high16 v5, -0x4080

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/16 v5, 0xc8

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    const/16 v5, 0x3e8

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    const/16 v5, 0x1f4

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    new-instance v5, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    const/16 v5, 0x2e

    iput-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    new-instance v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    new-instance v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;-><init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    new-instance v5, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    sget-object v5, Lcom/sec/android/app/twlauncher/R$styleable;->GLFastScrollIndexView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v5, 0x8

    const/16 v6, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    const/16 v5, 0x9

    const/16 v6, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    const/16 v5, 0xa

    const/16 v6, 0x3e8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    const/high16 v5, -0x4080

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    :cond_0
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextColor:I

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSelTextColor:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "default"

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x3

    const/high16 v7, 0x4120

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    new-array v1, v9, [C

    iget-char v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    aput-char v5, v1, v8

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    array-length v6, v1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v8, v6, v7}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnimDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method private compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCharsWouldFit(F)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    if-eqz p5, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    if-ge v2, v5, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    invoke-direct {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v0

    const/high16 v6, 0x4000

    div-float v1, v0, v6

    iget v6, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    iput v6, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-direct {p0, v6, v2, p3, p4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p3, p4, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v3

    if-eqz p5, :cond_3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-ne v4, v6, :cond_3

    iget v4, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->top:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iput v4, p3, Landroid/graphics/RectF;->bottom:F

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private computeBounds(IILandroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 13

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getHeight()I

    move-result v9

    int-to-float v5, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v2

    int-to-float v9, p1

    mul-float v4, v9, v2

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    add-float v6, v9, v10

    sub-float v1, v5, v6

    iget v9, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    const/4 v9, 0x1

    return v9

    :cond_0
    iget v9, v7, Landroid/graphics/RectF;->top:F

    add-float v8, v9, v1

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_1

    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCharsWouldFit(F)I

    move-result v3

    if-gt p1, v3, :cond_2

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v4

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/PointF;->y:F

    int-to-float v10, v3

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v4, v6

    sub-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method private computeWorkingStr(Ljava/lang/String;Ljava/lang/StringBuffer;I)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v6, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v6, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return v8

    :cond_0
    const/4 v4, 0x3

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v10, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    if-ge v6, v4, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v10, :cond_3

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, -0x1

    :cond_3
    int-to-float v9, v6

    const/high16 v10, 0x4040

    div-float/2addr v9, v10

    float-to-int v5, v9

    sub-int v9, v3, v7

    int-to-float v9, v9

    int-to-float v10, v5

    div-float/2addr v9, v10

    float-to-int v0, v9

    add-int/lit8 v1, v5, -0x2

    move v2, v7

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-char v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v0, -0x1

    add-int/2addr v2, v9

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-char v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I
    .locals 6

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float v2, v4, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v4

    div-float v4, v2, v4

    float-to-int v0, v4

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private getCharsWouldFit(F)I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v1

    div-float v3, v0, v1

    float-to-int v2, v3

    return v2
.end method

.method private setReloadRequired()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Contains(Landroid/graphics/PointF;)Z
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    return v1
.end method

.method public clearCurrentChar()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    const/4 v6, 0x1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTouchAlpha:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mNormalAlpha:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingBottom()I

    move-result v5

    invoke-direct {v13, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v15, v1, v3

    sub-float v1, v10, v15

    const/high16 v3, 0x4000

    div-float v9, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getWidth()I

    move-result v1

    iget v3, v13, Landroid/graphics/Rect;->left:I

    iget v4, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v0, v1

    move/from16 v16, v0

    new-instance v14, Landroid/graphics/PointF;

    iget v1, v13, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float v3, v16, v3

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-direct {v14, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    iget v1, v14, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v10

    iput v1, v14, Landroid/graphics/PointF;->y:F

    iget v1, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v9

    sub-float v6, v1, v3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    aput-char v3, v2, v1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextUppercase:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x0

    aget-char v3, v2, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v2, v1

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-ne v11, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mSelTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    const/4 v1, 0x0

    aget-char v1, v2, v1

    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-ne v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepCharBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v1, v8

    sub-float/2addr v6, v1

    :cond_4
    const/4 v3, 0x0

    array-length v4, v2

    iget v5, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1
.end method

.method public feedPt(Landroid/graphics/PointF;)I
    .locals 5

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-direct {p0, v3, p1, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellIndexForPt(Landroid/graphics/RectF;Landroid/graphics/PointF;Ljava/lang/StringBuffer;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    iget-char v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-eq v0, v3, :cond_0

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCellHeight()F
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mTextMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCellHeight:F

    goto :goto_0
.end method

.method public getCurrentChar()Ljava/lang/Character;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    iget-char v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mOverflowGrpSepChar:C

    if-eq v0, v2, :cond_0

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0
.end method

.method public getMidYForCurrentChar()F
    .locals 3

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, -0x4080

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCellHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setReloadRequired()V

    return-void
.end method

.method public isPreMatching()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mFirstCharPreMatches:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->updateBounds(Landroid/graphics/PointF;)Z

    :cond_0
    return-void
.end method

.method public pressDelayed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->abort()Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mPressDelay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->postToQueue(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAllowWiggle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    return-void
.end method

.method public setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->updateBounds(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public setPressedImmediate(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAlphaAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->abort()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressed(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unPressDelayed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$PressRunnable;->abort()Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mToUnPressedState:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mUnpressDelay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$UnPressRunnable;->postToQueue(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateBounds(Landroid/graphics/PointF;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mCurrentIndex:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mIndexStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mWorkingStr:Ljava/lang/StringBuffer;

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mAllowWiggle:Z

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->compute(Ljava/lang/String;Ljava/lang/StringBuffer;Landroid/graphics/RectF;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mBg:Landroid/graphics/drawable/Drawable;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method
