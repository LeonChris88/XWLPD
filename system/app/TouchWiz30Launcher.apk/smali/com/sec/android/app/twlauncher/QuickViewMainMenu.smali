.class public Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
.super Lcom/sec/android/app/twlauncher/QuickView;
.source "QuickViewMainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# instance fields
.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

.field private mChildGapH:I

.field private mChildGapV:I

.field private mChildLeft:I

.field private mChildTop:I

.field private mIsDBUpdate:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaxDeltaY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private final mPanelSizeLong:I

.field private final mPanelSizeLong2:I

.field private final mPanelSizeShort:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

.field private mScrollState:I

.field private mScrollTop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mTmpLocation:[I

.field private mTouchSlop:I

.field private mUseFullScreenInLandScapeMode:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    new-instance v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mIsDBUpdate:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    return p1
.end method

.method private drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z
    .locals 26

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getBottom()I

    move-result v4

    add-int v19, v20, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    move/from16 v0, v19

    if-gt v4, v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    move/from16 v0, v20

    if-ge v4, v0, :cond_1

    :cond_0
    const/16 v22, 0x0

    :goto_0
    return v22

    :cond_1
    const/high16 v23, 0x3f80

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_2

    const v23, 0x3f933333

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v21, p4, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    :cond_3
    move/from16 v10, v21

    :goto_1
    const/high16 v4, 0x3f80

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v4, 0x0

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-direct {v8, v4, v5, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v9, v4, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChildReduced(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v15, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v15, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v16, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v17, -0x4080

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_0

    :cond_5
    const/high16 v4, 0x3f80

    sub-float v10, v4, v21

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v15, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v15, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v16, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v17, -0x4080

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_2
.end method

.method private drawGLChildReduced(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;F)V
    .locals 12

    const/4 v11, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v8, v5, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v8, :cond_0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v2, v8, v9

    cmpl-float v8, v3, v2

    if-lez v8, :cond_2

    move v1, v2

    :goto_1
    mul-float/2addr v1, p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v6, v8

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v7, v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v7

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0, p1, v11, v11}, Lcom/sec/android/app/twlauncher/AppMenu;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private drop(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    return-void
.end method

.method private fling(I)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    :cond_0
    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private onSwap(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateAppInfo()V

    return-void
.end method

.method private savemenupage()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateAppInfo()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    return-void
.end method

.method private scroll(II)V
    .locals 4

    const/4 v3, 0x0

    if-gez p2, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, p2

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0

    :cond_3
    if-lez p2, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v0, v1, v2

    if-lez v0, :cond_5

    if-le v0, p2, :cond_4

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method private setCloseEndRect(I)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v12, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v8, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v10, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    :cond_0
    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    sub-int v18, v7, v14

    sub-int v19, v8, v16

    add-int v20, v7, v11

    add-int v20, v20, v15

    add-int v21, v8, v9

    add-int v21, v21, v13

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    const/16 v18, 0x0

    sub-int v19, v10, v12

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    add-int/lit8 v4, p1, -0x1

    :goto_1
    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, p1, 0x1

    :goto_2
    if-ge v4, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setOpenStartRect(I)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v12, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v9, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    :cond_0
    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    sub-int v18, v8, v14

    sub-int v19, v9, v16

    add-int v20, v8, v11

    add-int v20, v20, v15

    add-int v21, v9, v10

    add-int v21, v21, v13

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    const/16 v18, 0x0

    sub-int v19, v7, v12

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    add-int/lit8 v4, p1, -0x1

    :goto_1
    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, p1, 0x1

    :goto_2
    if-ge v4, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    return-void
.end method

.method private swapScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onSwap(I)V

    return-void
.end method

.method private updateAppInfo()V
    .locals 7

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_0
    if-ltz v5, :cond_3

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v6, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateTag()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method cancelDrag()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    return-void
.end method

.method close()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->savemenupage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    return-void
.end method

.method public computeScroll()V
    .locals 12

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    if-le v8, v9, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    if-ne v3, v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-eq v4, v8, :cond_2

    :cond_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {p0, v8, v9, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onScrollChanged(IIII)V

    :cond_2
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v1, v8, v4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    :cond_4
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v3

    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v7, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setOpenStartRect(I)V

    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ne v4, v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setCloseEndRect(I)V

    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-eq v7, v8, :cond_8

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_13

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v7, v9

    long-to-float v2, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_a

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v2, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    :cond_9
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    const/4 v7, 0x7

    :goto_4
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v5, v2, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_c

    :cond_b
    const/high16 v7, 0x3f80

    sub-float v5, v7, v5

    :cond_c
    const/high16 v7, 0x3f00

    mul-float/2addr v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getRight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v11, v11

    div-float v11, v2, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v7, :cond_f

    const-string v7, "QuickViewMainMenu"

    const-string v8, "Failed to get current rectangles from animation engine"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0x8

    goto :goto_4

    :cond_f
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_12

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ne v4, v7, :cond_11

    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    invoke-direct {p0, p1, v0, v7, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    goto :goto_7

    :cond_12
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ltz v7, :cond_d

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ge v7, v1, :cond_d

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    const/4 v7, 0x1

    invoke-direct {p0, p1, v0, v7, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    goto :goto_5

    :cond_13
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_14

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected init()V
    .locals 5

    new-instance v3, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v3}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setClipChildren(Z)V

    return-void
.end method

.method initScreen(I)V
    .locals 8

    const v6, 0x7f0b0035

    const v7, 0x7f020023

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeAllViews()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v5, p1, [Lcom/sec/android/app/twlauncher/QuickView$Animate;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    const v5, 0x7f0b0033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    const v5, 0x7f0b0034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    new-instance v5, Landroid/widget/Scroller;

    invoke-direct {v5, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    const v5, 0x7f020024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->makeScreen(I)Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    new-instance v6, Lcom/sec/android/app/twlauncher/QuickView$Animate;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/QuickView$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickView;)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_0
    return v11

    :cond_0
    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_0
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v11, v7, v11

    float-to-int v2, v11

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v11, v5, v11

    float-to-int v1, v11

    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    sub-int v3, v11, v12

    const/16 v11, 0x2710

    if-le v3, v11, :cond_1

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    sub-float/2addr v11, v7

    float-to-int v9, v11

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v4, :cond_3

    const/4 v10, 0x1

    :goto_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v11, 0x0

    invoke-direct {p0, v11, v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :sswitch_1
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_3
    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :sswitch_2
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    :cond_5
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    :sswitch_3
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-nez v11, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    float-to-int v12, v6

    float-to-int v13, v8

    invoke-direct {p0, v12, v13}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v12

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    sub-float v11, v7, v8

    float-to-int v2, v11

    sub-float v11, v5, v6

    float-to-int v1, v11

    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v7

    const/4 v10, 0x1

    if-ge v7, v10, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v10, v10

    if-eq v10, v7, :cond_3

    :cond_2
    new-array v10, v7, [Landroid/graphics/Rect;

    iput-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v10, v4, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v11

    if-le v10, v11, :cond_4

    add-int v10, v2, v3

    add-int/2addr v5, v10

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v8

    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    add-int v11, v4, v6

    add-int v12, v5, v3

    invoke-virtual {v10, v4, v5, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    aget-object v10, v10, v8

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v8

    invoke-virtual {v10, v0, v11}, Lcom/sec/android/app/twlauncher/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_6
    :goto_1
    add-int v10, v1, v6

    add-int/2addr v4, v10

    add-int/lit8 v10, v7, -0x3

    if-ne v8, v10, :cond_7

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int v10, v5, v10

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    add-int v10, v4, v6

    add-int v11, v5, v3

    invoke-virtual {v0, v4, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->startDrag(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    const/16 v17, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->computeScroll()V

    :cond_3
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-ltz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_5

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_7

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto/16 :goto_1

    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v8

    if-eqz v12, :cond_a

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    :cond_a
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v17

    if-lez v17, :cond_c

    neg-int v0, v9

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->fling(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drop(II)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    sub-long v0, v2, v4

    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scrollBy(II)V

    goto :goto_0
.end method
