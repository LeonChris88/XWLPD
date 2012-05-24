.class public Lcom/sec/android/app/twlauncher/FolderIcon;
.super Lcom/sec/android/app/twlauncher/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# static fields
.field private static mPreviewIconSize:F

.field private static mPreviewIconXGap:F

.field private static mPreviewIconYGap:F

.field private static mPreviewIconYOffset:F

.field private static mPreviewOffsetX:F

.field private static mPreviewOffsetY:F


# instance fields
.field private final MAX_ZOOM:F

.field private final ZOOM_DURATION:I

.field private mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mScale:F

.field private mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->ZOOM_DURATION:I

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->MAX_ZOOM:F

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->ZOOM_DURATION:I

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->MAX_ZOOM:F

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->init()V

    return-void
.end method

.method static fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;
    .locals 15

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/FolderIcon;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    :goto_0
    const/4 v4, 0x0

    instance-of v3, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    move-object v12, v13

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    new-instance v1, Lcom/sec/android/app/twlauncher/FolderDrawable;

    sget v5, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    sget v6, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    sget v7, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    sget v8, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    sget v9, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    sget v10, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    const v11, 0x7f070014

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    invoke-virtual {v14, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p3

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v3, v14}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    return-object v14

    :cond_0
    move-object/from16 v0, p3

    iget v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->shortCut:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_0

    :cond_1
    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_0

    :cond_2
    const v3, 0x7f020044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    goto :goto_0

    :cond_3
    const-string v3, "Launcher.FolderIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder image is not a BitmapDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static fromXml2(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;
    .locals 15

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/FolderIcon;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v4, 0x0

    instance-of v3, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v12, v13

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    new-instance v1, Lcom/sec/android/app/twlauncher/FolderDrawable;

    sget v5, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    sget v6, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    sget v7, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    sget v8, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    sget v9, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    sget v10, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    const v11, 0x7f070014

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    invoke-virtual {v14, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p3

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v0, p1

    iput-object v0, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, v14, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v3, v14}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    return-object v14

    :cond_0
    const-string v3, "Launcher.FolderIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder image is not a BitmapDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    return-void
.end method

.method private zoomIn()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    const v2, 0x3f99999a

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    return-void
.end method

.method private zoomOut()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x1

    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    iget v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget-wide v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, p2, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 5

    const/high16 v4, 0x3f80

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mZoomAnimation:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v1, v4

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v1, v4

    sub-float v1, v4, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v2, v4

    sub-float v2, v4, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    sub-float/2addr v3, v4

    sub-float v3, v4, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mScale:F

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawGLInternal(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method

.method onClone()V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    const/4 v4, 0x2

    new-array v3, v4, [I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getTop()I

    move-result v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->pointToCellExact(II[I)V

    aget v4, v3, v6

    aget v5, v3, v8

    invoke-virtual {v1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    aget v4, v3, v6

    aget v5, v3, v8

    aget v6, v3, v6

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v8

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getTop()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setDropLocationFeedback(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->zoomIn()V

    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->zoomOut()V

    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    instance-of v0, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v0, :cond_0

    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v7, v1

    :goto_0
    if-nez v7, :cond_1

    move-object v1, v7

    :goto_1
    return v4

    :cond_0
    instance-of v0, p6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_4

    move-object v1, p6

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v7, v1

    goto :goto_0

    :cond_1
    iget-wide v2, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_3

    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_3
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->zoomOut()V

    const/4 v4, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_3

    :cond_3
    move-object v1, v7

    goto :goto_2

    :cond_4
    move-object v7, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
