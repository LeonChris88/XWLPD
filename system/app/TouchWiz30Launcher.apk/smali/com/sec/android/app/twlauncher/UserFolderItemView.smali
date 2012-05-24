.class public Lcom/sec/android/app/twlauncher/UserFolderItemView;
.super Lcom/sec/android/app/twlauncher/MenuItemView;
.source "UserFolderItemView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;


# instance fields
.field private final MAX_ZOOM:F

.field private final ZOOM_DURATION:I

.field private mDDEnabled:Z

.field private mFoldersAllowed:Z

.field private mHightLightBitmap:Landroid/graphics/Bitmap;

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mScale:F

.field private mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->ZOOM_DURATION:I

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->MAX_ZOOM:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mDDEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mFoldersAllowed:Z

    return-void
.end method

.method private zoomIn()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    const v2, 0x3f99999a

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    return-void
.end method

.method private zoomOut()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    const-string v3, "UserFolderItemView acceptDrop"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mDDEnabled:Z

    if-eqz v2, :cond_0

    instance-of v2, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v2, :cond_0

    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mFoldersAllowed:Z

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v2, :cond_0

    :cond_2
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->isPhantom()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, p2, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 7

    const/high16 v6, 0x3f80

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    sub-float/2addr v3, v6

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    sub-float/2addr v3, v6

    sub-float v3, v6, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    sub-float/2addr v4, v6

    sub-float v4, v6, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    sub-float/2addr v5, v6

    sub-float v5, v6, v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    :cond_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    const v0, 0x409ffffe

    iget v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    sub-float/2addr v3, v6

    mul-float/2addr v3, v0

    invoke-virtual {p1, v6, v6, v6, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mHightLightBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mHightLightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mHightLightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mHightLightBitmap:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {p1, v3, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawBitmap(Landroid/graphics/Bitmap;FF)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    const/4 v3, 0x0

    return v3
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScaledRect()Landroid/graphics/RectF;

    move-result-object v6

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v10, p1, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v4, v8, v9

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v5, v8, v9

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getHitRect(Landroid/graphics/Rect;)V

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    div-float/2addr v8, v4

    float-to-int v8, v8

    iget v9, v6, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int v2, v8, v9

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    div-float/2addr v8, v5

    float-to-int v8, v8

    iget v9, v6, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    add-int v3, v8, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    float-to-int v1, v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    float-to-int v0, v8

    add-int v8, v2, v1

    add-int v9, v3, v0

    invoke-virtual {p1, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidateSurface()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    :cond_0
    return-void
.end method

.method public onContentsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->invalidateSurface()V

    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const-string v1, "UserfolderItemView onDragEnter"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mDDEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->zoomIn()V

    goto :goto_0
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const-string v1, "UserFolderItemView onDragExit"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mDDEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->zoomOut()V

    goto :goto_0
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    const-string v1, "UserFolderItemView onDragOver"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    move-object v2, p6

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalModeDelayedIfNeeded(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/MenuItemView;->onLayout(ZIIII)V

    return-void
.end method

.method public setDragDropEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mDDEnabled:Z

    return-void
.end method

.method public setFoldersAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mFoldersAllowed:Z

    return-void
.end method

.method public setHighlightBitmap(I)V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mHightLightBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOnContentsChangedListener(Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->invalidateSurface()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
