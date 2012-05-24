.class public Lcom/sec/android/app/twlauncher/BubbleTextView;
.super Landroid/widget/LinearLayout;
.source "BubbleTextView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeCenterOffsetFromCenter:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeTopOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCornerRadius:F

.field private mDrawBadgeCount:Z

.field private mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalStorageOffset:I

.field private mFocusMargin:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field protected mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field protected mIconView:Landroid/widget/ImageView;

.field private mIgnoreDrawableStateChanges:Z

.field private mIsDragging:Z

.field private mIsFocused:Z

.field private mIsPressed:Z

.field protected mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

.field protected mNameView:Landroid/widget/TextView;

.field private mRoundRectPaint:Landroid/graphics/Paint;

.field private mShownBadgeCnt:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIgnoreDrawableStateChanges:Z

    iput v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawBadgeCount:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIgnoreDrawableStateChanges:Z

    iput v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawBadgeCount:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    return-void
.end method

.method private drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsDragging:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v15, v22

    check-cast v15, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v5

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/16 v25, 0x3e8

    move/from16 v0, v25

    if-lt v5, v0, :cond_2

    const/16 v5, 0x3e7

    :cond_2
    invoke-virtual {v15, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    const/16 v25, 0x1

    move/from16 v0, v25

    if-lt v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawBadgeCount:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    const/16 v24, 0x0

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v25, v16, v19

    sub-int v12, v25, v20

    sub-int v25, v14, v21

    sub-int v11, v25, v18

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v10, v12, :cond_3

    move v10, v12

    :cond_3
    if-ge v9, v11, :cond_4

    move v9, v11

    :cond_4
    add-int v25, v10, v19

    add-int v24, v25, v20

    add-int v25, v9, v21

    add-int v13, v25, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v5, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    if-nez v25, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mShownBadgeCnt:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_1
    const/16 v25, 0x64

    move/from16 v0, v25

    if-lt v5, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_2
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-int/lit8 v25, v24, 0x2

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-int/lit8 v26, v13, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Paint;->ascent()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->descent()F

    move-result v28

    add-float v27, v27, v28

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    sub-float v26, v26, v27

    const/high16 v27, 0x3f80

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v8, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    if-nez v25, :cond_6

    new-instance v25, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v26

    sub-int v26, v26, v24

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeCenterOffsetFromCenter:I

    move/from16 v26, v0

    add-int v17, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getPaddingTop()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeTopOffset:I

    move/from16 v26, v0

    add-int v23, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v25, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_2
.end method

.method private drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 8

    const/4 v7, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusMargin:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v5, :cond_0

    new-instance v5, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v4, v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    neg-int v6, v3

    int-to-float v6, v6

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    return-void
.end method

.method private getBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4100

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7f00

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    const v2, 0x7f020020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0b0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    const v2, 0x7f0b0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeCenterOffsetFromCenter:I

    const v2, 0x7f020046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0b0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mExternalStorageOffset:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v2, 0x7f0b001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusMargin:I

    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeTopOffset:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    const v3, 0x7f070003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private preload(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->updateTextView()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLEasySurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateTextView()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/twlauncher/GLEasySurface;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/GLEasySurface;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->setViewForInvalidate(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->addOnDrawLstnr(Lcom/sec/android/app/twlauncher/GLEasySurface$OnDrawLstnr;)V

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->setLoc(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLInternal(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    if-ne p2, v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v6, :cond_4

    move-object v2, p2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_3
    :goto_0
    return v5

    :cond_4
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    if-eqz v6, :cond_5

    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusMargin:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/GLEasySurface;->getLoc()Landroid/graphics/RectF;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_0

    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_0
.end method

.method protected drawGLInternal(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 9

    const/4 v8, 0x0

    const/high16 v1, 0x3f00

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f80

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLEasySurface;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIgnoreDrawableStateChanges:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getDrawableState()[I

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    array-length v0, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_3

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    aget v5, v4, v2

    const v6, 0x101009c

    if-ne v5, v6, :cond_4

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    if-eqz v5, :cond_0

    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsFocused:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3

    const/4 v2, 0x1

    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_0
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLEasySurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLEasySurface;->invalidate()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateIconSurface()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDraw(Lcom/sec/android/app/twlauncher/GLEasySurface;Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLEasySurface;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0, v4, v4}, Lcom/sec/android/app/twlauncher/GLEasySurface;->drawView(Landroid/graphics/Canvas;Landroid/view/View;FF)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->updateTextView()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsDragging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsDragging:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->updateTextView()V

    return-void
.end method
