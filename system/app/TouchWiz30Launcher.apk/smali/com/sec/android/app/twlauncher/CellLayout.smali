.class public Lcom/sec/android/app/twlauncher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;,
        Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static ScreensBG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isBGText:Z

.field private mActualCellHeight:I

.field private mActualCellWidth:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

.field private mColumnCells:I

.field private mColumnEndPadding:I

.field private mColumnStartPadding:I

.field private mDimPaint:Landroid/graphics/Paint;

.field private mDirtyTag:Z

.field private mDragRect:Landroid/graphics/RectF;

.field private mHeightGap:I

.field private mLastDownOnOccupiedCell:Z

.field mOccupied:[[Z

.field private final mRect:Landroid/graphics/Rect;

.field private mRowCells:I

.field private mRowEndPadding:I

.field private mRowStartPadding:I

.field private mScreenClipExtendedEdge:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/CellLayout;->ScreensBG:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    new-array v1, v6, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    iput v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->isBGText:Z

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowEndPadding:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnEndPadding:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    :cond_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7fff

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->acquire()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    :cond_0
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    :cond_1
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .locals 1

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .locals 8

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v6, :cond_2

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iget v4, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_2

    if-ge v4, p1, :cond_2

    iget v5, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    :goto_4
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    if-ge v5, p2, :cond_4

    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3

    invoke-static {p0, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p4, :cond_6

    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    :goto_2
    move v1, v3

    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    move v2, v4

    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    :goto_5
    if-nez v0, :cond_3

    :cond_0
    if-eqz v0, :cond_5

    aput v3, p0, v6

    aput v4, p0, v5

    :goto_6
    return v5

    :cond_1
    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_6
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->regenerateId:Z

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    return-void
.end method

.method cellToPointX(I)I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1
.end method

.method cellToPointY(I)I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1
.end method

.method cellsToPixelRect(II[I)Landroid/graphics/Rect;
    .locals 8

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v2, [I

    new-array v1, v2, [I

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    aget v2, p3, v6

    aget v3, p3, v7

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v6

    aget v6, v1, v6

    add-int/2addr v5, v6

    aget v6, v0, v7

    aget v7, v1, v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int v2, v8, v7

    if-nez p3, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int v1, v2, v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v4, v1, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_3

    add-int/lit16 v4, v4, 0xa0

    :cond_3
    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    add-int/2addr v7, v6

    if-ge v1, v7, :cond_4

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    neg-int v7, v7

    if-gt v4, v7, :cond_5

    :cond_4
    if-eqz p2, :cond_1

    :cond_5
    instance-of v7, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v7, :cond_6

    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v5, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v7, p1, v5}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->drawChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    :cond_7
    return v3
.end method

.method public drawShadows(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->drawAllShadowsWithClipping(Lcom/sec/android/app/twlauncher/GLCanvas;II)V

    return-void
.end method

.method findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 7

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    mul-int v6, v3, v2

    add-int/2addr v6, v1

    aget-boolean v6, p1, v6

    aput-boolean v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v4, v0, p2}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    :cond_2
    invoke-virtual {p0, v0, v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v5

    return-object v5
.end method

.method findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 8

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/high16 v6, -0x8000

    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput v7, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    aget-object v6, p1, v2

    aget-boolean v6, v6, v3

    if-nez v6, :cond_0

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v1, p2, p3, p1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    aget-object v6, p1, v2

    aput-boolean v4, v6, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    :goto_2
    iput-boolean v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    return-object v0

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I
    .locals 16

    if-eqz p6, :cond_1

    move-object/from16 v3, p6

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    const-wide v1, 0x7fefffffffffffffL

    move-object/from16 v0, p5

    iget-boolean v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-nez v10, :cond_2

    const/4 v3, 0x0

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    const/4 v10, 0x2

    new-array v3, v10, [I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_5

    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    iget v10, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    move/from16 v0, p3

    if-ne v10, v0, :cond_3

    iget v10, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    move/from16 v0, p4

    if-eq v10, v0, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget v10, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v11, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    const/4 v10, 0x0

    aget v10, v5, v10

    sub-int v10, v10, p1

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v12, 0x1

    aget v12, v5, v12

    sub-int v12, v12, p2

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    cmpg-double v10, v6, v1

    if-gtz v10, :cond_3

    move-wide v1, v6

    const/4 v10, 0x0

    iget v11, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v11, v3, v10

    const/4 v10, 0x1

    iget v11, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v11, v3, v10

    goto :goto_3

    :cond_5
    const-wide v10, 0x7fefffffffffffffL

    cmpg-double v10, v1, v10

    if-ltz v10, :cond_0

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    return v0
.end method

.method getColumns()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    return v0
.end method

.method getCountX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    return v0
.end method

.method getCountY()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    return v0
.end method

.method getOccupiedCells()[Z
    .locals 8

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v1, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    mul-int v6, v3, v5

    new-array v0, v6, [Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    mul-int v6, v4, v3

    add-int/2addr v6, v2

    aget-object v7, v1, v2

    aget-boolean v7, v7, v4

    aput-boolean v7, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getRows()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    return v0
.end method

.method public getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->invalidateAtLocation([I)V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    aget v1, p2, v2

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    aget v1, p2, v3

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollX:I

    move/from16 v16, v0

    add-int v11, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollY:I

    move/from16 v16, v0

    add-int v13, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    add-int/lit8 v8, v5, -0x1

    :goto_0
    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v15

    if-eqz v15, :cond_4

    :cond_0
    invoke-virtual {v4, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v11, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget v15, v9, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    const/4 v6, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    :cond_1
    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->pointToCellExact(II[I)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v10, v15}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    const/4 v15, 0x0

    iput-object v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v15, 0x0

    aget v15, v3, v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    const/4 v15, 0x1

    aget v15, v3, v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v15, 0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    const/4 v15, 0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    const/4 v15, 0x0

    aget v15, v3, v15

    if-ltz v15, :cond_5

    const/4 v15, 0x1

    aget v15, v3, v15

    if-ltz v15, :cond_5

    const/4 v15, 0x0

    aget v15, v3, v15

    if-ge v15, v12, :cond_5

    const/4 v15, 0x1

    aget v15, v3, v15

    if-ge v15, v14, :cond_5

    const/4 v15, 0x0

    aget v15, v3, v15

    aget-object v15, v10, v15

    const/16 v16, 0x1

    aget v16, v3, v16

    aget-boolean v15, v15, v16

    if-nez v15, :cond_5

    const/4 v15, 0x1

    :goto_1
    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    const/4 v15, 0x0

    return v15

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    :cond_6
    const/4 v15, 0x1

    if-ne v1, v15, :cond_3

    const/4 v15, 0x0

    iput-object v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v15, -0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    const/4 v15, -0x1

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v15, 0x0

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    const/4 v15, 0x0

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    const/4 v15, 0x0

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    iget v8, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->x:I

    iget v9, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->y:I

    iget v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v8

    iget v1, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v9

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    iget v3, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    iget v4, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    if-eqz v20, :cond_0

    if-nez v14, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowEndPadding:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnEndPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    add-int/lit8 v18, v22, -0x1

    add-int/lit8 v17, v24, -0x1

    sub-int v5, v15, v8

    sub-int v5, v5, v25

    mul-int v6, v4, v24

    sub-int v19, v5, v6

    div-int v5, v19, v17

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    sub-int v5, v21, v7

    sub-int v5, v5, v23

    mul-int v6, v3, v22

    sub-int v13, v5, v6

    if-lez v18, :cond_2

    div-int v5, v13, v18

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v12

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->setup(IIIIII)V

    iget v5, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v5, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/app/twlauncher/CellLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnStartPadding:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowStartPadding:I

    sub-int v4, p1, v0

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    sub-int v4, p2, v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    :cond_3
    return-void
.end method

.method public rectToCell(II)[I
    .locals 7

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v5, p1, v2

    div-int v3, v5, v2

    add-int v5, p2, v2

    div-int v4, v5, v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5
.end method

.method public rectToCell2(II)[I
    .locals 6

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    rem-int v4, p1, v1

    if-eqz v4, :cond_2

    div-int v4, p1, v1

    add-int/lit8 v2, v4, 0x1

    :goto_0
    rem-int v4, p2, v0

    if-eqz v4, :cond_3

    div-int v4, p2, v0

    add-int/lit8 v3, v4, 0x1

    :goto_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    if-le v2, v4, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4

    :cond_2
    div-int v2, p1, v1

    goto :goto_0

    :cond_3
    div-int v3, p2, v0

    goto :goto_1
.end method

.method public rectToCellRound(II)[I
    .locals 6

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    if-le v2, v4, :cond_2

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mColumnCells:I

    :cond_2
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRowCells:I

    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public resumeUpdates()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->resumeUpdates()V

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setScreenClipExtendedEdge(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    return-void
.end method

.method spanToPixel(II[I)V
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    add-int/2addr v1, v2

    aput v1, p3, v0

    const/4 v0, 0x1

    add-int/lit8 v1, p2, -0x1

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    add-int/2addr v1, v2

    aput v1, p3, v0

    return-void
.end method

.method spanToPixelH(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method spanToPixelW(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public suspendUpdates()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->suspendUpdates()V

    return-void
.end method

.method public updateBadgeCounts()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
