.class public Lcom/android/calendar/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBottomGap:I

.field private mCellMargin:F

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F

.field private mMoreEventOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EventGeometry"

    iput-object v0, p0, Lcom/android/calendar/EventGeometry;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mMoreEventOffset:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mBottomGap:I

    return-void
.end method


# virtual methods
.method computeEventRect(IIIILcom/android/calendar/Event;I)Z
    .locals 15

    move-object/from16 v0, p5

    iget-boolean v12, v0, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    iget v1, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    move-object/from16 v0, p5

    iget v9, v0, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p1

    if-gt v9, v0, :cond_1

    move/from16 v0, p1

    if-ge v4, v0, :cond_2

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getAdjustStartTime()I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getAdjustEndTime()I

    move-result v6

    move/from16 v0, p1

    if-ge v9, v0, :cond_3

    const/4 v11, 0x0

    :cond_3
    move/from16 v0, p1

    if-le v4, v0, :cond_4

    const/16 v6, 0x5a0

    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getColumn()I

    move-result v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v12

    const/4 v13, 0x4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v10, v11, 0x3c

    div-int/lit8 v5, v6, 0x3c

    mul-int/lit8 v12, v5, 0x3c

    if-ne v12, v6, :cond_5

    add-int/lit8 v5, v5, -0x1

    :cond_5
    move/from16 v0, p4

    int-to-float v12, v0

    int-to-float v13, v7

    div-float v3, v12, v13

    const/4 v12, 0x7

    move/from16 v0, p6

    if-ne v0, v12, :cond_a

    move/from16 v0, p4

    int-to-float v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    const/high16 v14, 0x4000

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    int-to-float v13, v7

    div-float v3, v12, v13

    const/4 v12, 0x1

    if-le v7, v12, :cond_9

    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    add-float/2addr v12, v13

    int-to-float v13, v2

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    if-lez v2, :cond_6

    const/4 v12, 0x4

    if-ge v7, v12, :cond_6

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    int-to-float v13, v2

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    :cond_6
    add-int v12, p2, p4

    int-to-float v12, v12

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/calendar/Event;->left:F

    add-float/2addr v13, v3

    const/high16 v14, 0x3f80

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    :goto_1
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->right:F

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/calendar/Event;->right:F

    float-to-int v13, v13

    int-to-float v13, v13

    sub-float v8, v12, v13

    const/high16 v12, 0x3f00

    cmpl-float v12, v8, v12

    if-nez v12, :cond_7

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    const/high16 v13, 0x3e80

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->right:F

    const/high16 v13, 0x3e80

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    :cond_7
    :goto_2
    move/from16 v0, p3

    int-to-float v12, v0

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v13, v11

    mul-float/2addr v13, v1

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v13, v10

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v0, p3

    int-to-float v12, v0

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    int-to-float v13, v6

    mul-float/2addr v13, v1

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    int-to-float v13, v5

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mBottomGap:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v13, v0, Lcom/android/calendar/Event;->top:F

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->top:F

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->bottom:F

    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_9
    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v0, p4

    int-to-float v13, v0

    add-float/2addr v12, v13

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    const/high16 v14, 0x4000

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_b

    iget v12, p0, Lcom/android/calendar/EventGeometry;->mMoreEventOffset:I

    int-to-float v12, v12

    sub-float/2addr v3, v12

    :cond_b
    move/from16 v0, p2

    int-to-float v12, v0

    int-to-float v13, v2

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    const/high16 v13, 0x3f80

    add-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->left:F

    const/4 v12, 0x1

    if-le v7, v12, :cond_c

    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    add-float/2addr v12, v3

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p5

    iget v12, v0, Lcom/android/calendar/Event;->left:F

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    add-float/2addr v12, v3

    move-object/from16 v0, p5

    iput v12, v0, Lcom/android/calendar/Event;->right:F

    goto/16 :goto_2
.end method

.method computeNewStartTime(F)I
    .locals 3

    iget v0, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    iget v1, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    div-float v0, p1, v0

    float-to-int v0, v0

    return v0
.end method

.method eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p1, Lcom/android/calendar/Event;->left:F

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/android/calendar/Event;->right:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/calendar/Event;->top:F

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/android/calendar/Event;->bottom:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pointToEvent(FFLcom/android/calendar/Event;)F
    .locals 8

    iget v3, p3, Lcom/android/calendar/Event;->left:F

    iget v4, p3, Lcom/android/calendar/Event;->right:F

    iget v5, p3, Lcom/android/calendar/Event;->top:F

    iget v0, p3, Lcom/android/calendar/Event;->bottom:F

    cmpl-float v6, p1, v3

    if-ltz v6, :cond_5

    cmpg-float v6, p1, v4

    if-gtz v6, :cond_3

    cmpl-float v6, p2, v5

    if-ltz v6, :cond_2

    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    sub-float v1, p2, v0

    goto :goto_0

    :cond_2
    sub-float v1, v5, p2

    goto :goto_0

    :cond_3
    sub-float v1, p1, v4

    cmpg-float v6, p2, v5

    if-gez v6, :cond_4

    sub-float v2, v5, p2

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    :cond_4
    cmpl-float v6, p2, v0

    if-lez v6, :cond_0

    sub-float v2, p2, v0

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    :cond_5
    sub-float v1, v3, p1

    cmpg-float v6, p2, v5

    if-gez v6, :cond_6

    sub-float v2, v5, p2

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    :cond_6
    cmpl-float v6, p2, v0

    if-lez v6, :cond_0

    sub-float v2, p2, v0

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0
.end method

.method setBottomGap(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/EventGeometry;->mBottomGap:I

    return-void
.end method

.method setCellMargin(F)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:F

    return-void
.end method

.method setHourGap(F)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    return-void
.end method

.method setHourHeight(F)V
    .locals 1

    const/high16 v0, 0x4270

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    return-void
.end method

.method setMinEventHeight(F)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    return-void
.end method

.method setMoreEventOffset(I)V
    .locals 0

    iput p1, p0, Lcom/android/calendar/EventGeometry;->mMoreEventOffset:I

    return-void
.end method
