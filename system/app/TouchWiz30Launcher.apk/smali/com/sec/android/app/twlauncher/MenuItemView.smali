.class public Lcom/sec/android/app/twlauncher/MenuItemView;
.super Landroid/widget/LinearLayout;
.source "MenuItemView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# static fields
.field private static final mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

.field static mUninstallLockPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeCenterOffsetFromCenter:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeTopOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDeleteIconLeftOffsetFromCenter:I

.field private mDeleteIconTopOffset:I

.field private mDrawBadgeCount:Z

.field private mEditLeftOffsetFromIconLeft:I

.field private mEditTopOffsetFromIconTop:I

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

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field protected mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field protected mNameView:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPhantomMode:Z

.field private mShowAppIsRunning:Z

.field private mShownBadgeCnt:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    const v1, 0x3dcccccd

    const v2, 0x3c888889

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/RoundedRectSolid;-><init>(FF)V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mUninstallLockPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsDragging:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShownBadgeCnt:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->init()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 27

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v5

    if-lez v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v22, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShownBadgeCnt:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    const/16 v23, 0x64

    move/from16 v0, v23

    if-lt v5, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v23, v15, v18

    sub-int v12, v23, v19

    sub-int v23, v14, v20

    sub-int v11, v23, v17

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v10, v12, :cond_1

    move v10, v12

    :cond_1
    if-ge v9, v11, :cond_2

    move v9, v11

    :cond_2
    add-int v23, v10, v18

    add-int v22, v23, v19

    add-int v23, v9, v20

    add-int v13, v23, v17

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-int/lit8 v23, v22, 0x2

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v13, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->ascent()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Paint;->descent()F

    move-result v26

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    sub-float v24, v24, v25

    const/high16 v25, 0x3f80

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v8, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    new-instance v23, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct/range {v23 .. v23}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v23

    sub-int v23, v23, v22

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeCenterOffsetFromCenter:I

    move/from16 v24, v0

    add-int v16, v23, v24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getPaddingTop()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    move/from16 v24, v0

    add-int v21, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method private drawGLDeleteIcon(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuItemDeleteIconSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconLeftOffsetFromCenter:I

    add-int v0, v2, v3

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconTopOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    :cond_0
    return-void
.end method

.method private drawGLEditCorner(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuItemEditCornerSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditLeftOffsetFromIconLeft:I

    add-int v0, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditTopOffsetFromIconTop:I

    add-int v2, v3, v4

    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    :cond_0
    return-void
.end method

.method private drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 8

    const/4 v7, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v5, :cond_0

    new-instance v5, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v4, v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    neg-int v6, v3

    int-to-float v6, v6

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x7f00

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeCenterOffsetFromCenter:I

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconTopOffset:I

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconLeftOffsetFromCenter:I

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditLeftOffsetFromIconLeft:I

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditTopOffsetFromIconTop:I

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mExternalStorageOffset:I

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    instance-of v2, v14, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v2, :cond_1

    instance-of v2, v14, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v2, :cond_9

    :cond_1
    const/4 v8, 0x1

    :goto_1
    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x3ecccccd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v16

    if-eqz v8, :cond_4

    if-eqz v16, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLEditCorner(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    :cond_4
    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v13}, Landroid/widget/TextView;->getTop()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v13}, Landroid/widget/TextView;->getRight()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {v13}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    int-to-float v7, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuItemView;->mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    const/high16 v2, 0x41f0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateX(F)V

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x41a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FFF)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v11}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v7, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_7

    move-object/from16 v10, v16

    check-cast v10, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v8, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    :cond_7
    :goto_2
    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_7

    instance-of v2, v10, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_c

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLDeleteIcon(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v2, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.samsung.swift.app.kiesair"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.infraware.polarisoffice"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.vlingo.client.samsung"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "com.sec.android.im"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    :cond_e
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuItemView;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getUninstallLockPackageList()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/twlauncher/MenuItemView;->mUninstallLockPackages:Ljava/util/ArrayList;

    :cond_f
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuItemView;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    const/4 v9, 0x0

    :goto_4
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuItemView;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_b

    sget-object v2, Lcom/sec/android/app/twlauncher/MenuItemView;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    goto :goto_3

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    if-ne p2, v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v6, :cond_4

    move-object v2, p2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

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
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v6, :cond_5

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

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

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getDrawableState()[I

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

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

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    aget v5, v4, v2

    const v6, 0x101009c

    if-ne v5, v6, :cond_4

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v5, :cond_0

    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0
.end method

.method public forceReload()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-void
.end method

.method public freeResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-void
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3

    const/4 v2, 0x1

    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_0
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public isPhantom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    return-void
.end method

.method public setAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setDrawBadgeCountOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    return-void
.end method

.method public setIgnoreDrawableStateChanges(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsDragging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsDragging:Z

    return-void
.end method

.method public setPhantom(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    return-void
.end method

.method public setShowAppIsRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateVisualsIfRequired()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
