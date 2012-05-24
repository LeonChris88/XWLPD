.class public Lcom/sec/android/app/twlauncher/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/PageIndicator$1;,
        Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;,
        Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;
    }
.end annotation


# static fields
.field private static mRate:[F


# instance fields
.field private mBarRatioLeft:F

.field private mBarRatioRight:F

.field private mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

.field private mCurrentPage:I

.field private mDrawing:Z

.field private mEnableShowHide:Z

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mHandler:Landroid/os/Handler;

.field private mIconNumberCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mIconTextPaint:Landroid/graphics/Paint;

.field private mIsHiding:Z

.field private mIsLongPressPending:Z

.field private mLeft:I

.field private mLeftPage:I

.field private mMaxIcons:I

.field private mNoMediumIcon:Z

.field private mPaddingH:I

.field private mPaddingV:I

.field private mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

.field private mPageWidth:I

.field private mPanelNumberCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

.field private mPanelTextPaint:Landroid/graphics/Paint;

.field private mParent:Lcom/sec/android/app/twlauncher/Scene;

.field private mSeekBarMode:Z

.field private mSeekBarPanelOffset:I

.field private mShow:Z

.field private mThumbCurrent:I

.field private mThumbStart:I

.field private mThumbStartOffset:I

.field private mThumbWidth:I

.field private mTop:I

.field private mTotalPages:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIIIZLcom/sec/android/app/twlauncher/Scene;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconNumberCache:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelNumberCache:Ljava/util/HashMap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    const-string v1, "800x480"

    const-string v2, "1280x800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "800x480"

    const-string v2, "1280x720"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    :goto_0
    iput p3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    iput p4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    iput p5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    iput p6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    iput-boolean p7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mNoMediumIcon:Z

    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarPanelOffset:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0040

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0b0041

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f020021

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f02005a

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    const v2, 0x7f020059

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    const v1, 0x7f020058

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    new-instance v2, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v5, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    invoke-direct {v1, p0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;-><init>(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/PageIndicator$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    iput-object p8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mParent:Lcom/sec/android/app/twlauncher/Scene;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x8ft 0xc2t 0x3et
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5ct 0x8ft 0xc2t 0x3et
        0x85t 0xebt 0x51t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/PageIndicator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/twlauncher/PageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/Scene;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mParent:Lcom/sec/android/app/twlauncher/Scene;

    return-object v0
.end method

.method static synthetic access$400()[F
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mRate:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/PageIndicator;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/PageIndicator;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconNumberCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/PageIndicator;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/PageIndicator;Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/PageIndicator;->drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    return-void
.end method

.method private disableIconStates()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/GLCanvas;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Surface;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v3, :cond_0

    move-object v2, p5

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v4

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v3, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    return-void
.end method

.method private enableIconStates()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mNoMediumIcon:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->setDrawState(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private enterSeekBarMode()V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->disableIconStates()V

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    mul-int v0, v7, v8

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sub-int/2addr v7, v0

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int v1, v7, v8

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v0

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v7, v4

    const/high16 v8, 0x4000

    div-float v6, v7, v8

    iget v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v7, 0x4c

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v7, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    const v7, 0x3e4ccccd

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v7, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-nez v7, :cond_2

    new-instance v7, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v7, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    check-cast v7, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public centerCurrentPage(I)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-gez v2, :cond_3

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    if-le v2, v3, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-le v2, v0, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    goto :goto_0
.end method

.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z
    .locals 17

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    add-int p2, p2, v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v12

    move/from16 v0, p2

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    add-int/2addr v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    add-int v8, p2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v6

    add-int v9, v1, v6

    move-object/from16 v1, p1

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(IIIIIIII)V

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    :cond_1
    return v15

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v10

    sub-int v1, v12, v10

    div-int/lit8 v16, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollBarSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    int-to-float v5, v1

    add-int v1, v16, v10

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v10

    sub-int v1, v12, v10

    div-int/lit8 v16, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mFastScrollThumbSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    add-int v1, v16, v10

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarPanelOffset:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v1, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelNumberCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPanelTextPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->drawPageNumber(Lcom/sec/android/app/twlauncher/GLCanvas;ILjava/util/HashMap;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingH:I

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, p2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mMaxIcons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageIcons:[Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;

    aget-object v2, v1, v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-ne v14, v1, :cond_4

    add-int/lit8 v1, v14, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator$PageIcon;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v1

    or-int/2addr v15, v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public enableShowHide(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    goto :goto_0
.end method

.method public enterSeekBarMode(IIZ)Z
    .locals 5

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    if-nez p3, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto :goto_0
.end method

.method public exitSeekBarMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    return v0
.end method

.method getTouchPage(II)I
    .locals 4

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    :cond_0
    return v0
.end method

.method public getTouchScrollOffset(IIZ)I
    .locals 7

    const/4 v1, -0x1

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    if-eqz v4, :cond_3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    sub-int v3, p1, v4

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    if-gez v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    :cond_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    :cond_2
    :goto_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    :cond_3
    :goto_1
    return v1

    :cond_4
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_5

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    :cond_5
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v1, v4, v5

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v0, v4, v5

    if-le v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeftPage:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    div-int v5, v3, v5

    add-int v2, v4, v5

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v1, v2, v4

    goto :goto_1
.end method

.method public hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mEnableShowHide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->disableIconStates()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    return-void
.end method

.method public inSeekBarMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    return v0
.end method

.method public isInPageIndicator(II)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTop:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPaddingV:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetFastScrollTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mConverter:Lcom/sec/android/app/twlauncher/PageIndicator$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsLongPressPending:Z

    return-void
.end method

.method public setLayout(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    iput p2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    return-void
.end method

.method public setPageScrollOffset(I)V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mSeekBarMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    if-ge p1, v1, :cond_2

    if-lez p1, :cond_1

    int-to-float v1, p1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioLeft:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mCurrentPage:I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mTotalPages:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageWidth:I

    mul-int v0, v1, v2

    if-ge p1, v0, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStart:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbStartOffset:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mBarRatioRight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mThumbCurrent:I

    move p1, v0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mIsHiding:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mDrawing:Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableIconStates()V

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator;->mShow:Z

    return-void
.end method
