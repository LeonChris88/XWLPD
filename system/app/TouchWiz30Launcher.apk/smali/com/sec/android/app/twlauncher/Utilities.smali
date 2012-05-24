.class final Lcom/sec/android/app/twlauncher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    sget-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v11

    :try_start_0
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v12, -0x1

    if-ne v10, v12, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0b0016

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    :cond_0
    sget v9, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v9, :cond_7

    if-lez v4, :cond_7

    if-lt v9, v1, :cond_1

    if-ge v4, v0, :cond_5

    :cond_1
    int-to-float v10, v1

    int-to-float v12, v0

    div-float v6, v10, v12

    if-le v1, v0, :cond_3

    int-to-float v10, v9

    div-float/2addr v10, v6

    float-to-int v4, v10

    :cond_2
    :goto_0
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    if-ne v9, v10, :cond_4

    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    if-ne v4, v10, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    :goto_1
    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v10, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v12, v12, 0x2

    sget v13, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v13, v4

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v10, v12, v13, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v12, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v10, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    monitor-exit v11

    :goto_2
    return-object v8

    :cond_3
    if-le v0, v1, :cond_2

    int-to-float v10, v4

    mul-float/2addr v10, v6

    float-to-int v9, v10

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_5
    if-lt v1, v9, :cond_6

    if-ge v0, v4, :cond_7

    :cond_6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v10, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget v10, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v3, p0, v10, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_7
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, p0

    goto :goto_2
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 23

    sget-object v21, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v21

    :try_start_0
    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v20, 0x7f0b0016

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sput v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    :cond_0
    sget v17, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v9, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    if-lez v17, :cond_4

    if-lez v9, :cond_4

    move/from16 v0, v17

    if-lt v0, v12, :cond_2

    if-ge v9, v11, :cond_8

    :cond_2
    int-to-float v0, v12

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v14, v20, v22

    if-le v12, v11, :cond_6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v9, v0

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v20

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v22, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int v20, v20, v17

    div-int/lit8 v18, v20, 0x2

    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int v20, v20, v9

    div-int/lit8 v19, v20, 0x2

    add-int v20, v18, v17

    add-int v22, v19, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 p0, v10

    :cond_4
    :goto_3
    monitor-exit v21

    return-object p0

    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    :cond_6
    if-le v11, v12, :cond_3

    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v20, v20, v14

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1

    :cond_7
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_2

    :cond_8
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    if-ge v11, v9, :cond_4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget v20, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v22, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int v20, v17, v12

    div-int/lit8 v18, v20, 0x2

    sub-int v20, v9, v11

    div-int/lit8 v19, v20, 0x2

    add-int v20, v18, v12

    add-int v22, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v20, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 p0, v10

    goto/16 :goto_3
.end method

.method static zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V
    .locals 5

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    const/4 v1, 0x0

    :goto_1
    sub-int v4, v0, p2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method
