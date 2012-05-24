.class public Lcom/sec/android/app/twlauncher/GLFastScrollListView;
.super Landroid/view/ViewGroup;
.source "GLFastScrollListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mCurrentFastScrollIndexView:I

.field private mFastScrollIndexGravity:I

.field private mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

.field private mFastScrollIndexViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

.field private mFirstCharColor:I

.field private mLastMovePt:Landroid/graphics/PointF;

.field private mLastSelLen:I

.field private mListBestMatchIndices:Landroid/util/SparseIntArray;

.field private mListExactMatchIndices:Landroid/util/SparseIntArray;

.field private mListView:Lcom/sec/android/app/twlauncher/GLListView;

.field private mPopupHeight:F

.field private mPopupHeightInc:F

.field private mPopupWidth:F

.field private mPopupWidthInc:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GLFastScrollListView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLFastScrollListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    return-void
.end method

.method private feedPtToIndexView(ILandroid/graphics/PointF;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v6, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->feedPt(Landroid/graphics/PointF;)I

    move-result v4

    if-eq v4, v8, :cond_0

    if-ne v4, v5, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getSelection(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updatePopup(Ljava/lang/String;)Z

    if-ne v4, v8, :cond_2

    move v2, v5

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateList(ZLjava/lang/String;)Z

    :cond_1
    return v5

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMatchingIndex(Ljava/lang/String;IIZ)I
    .locals 9

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    if-ltz p2, :cond_0

    if-le p2, v5, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    if-ltz p3, :cond_2

    if-le p3, v5, :cond_3

    :cond_2
    move p3, v5

    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, p2

    :goto_0
    if-gt v3, p3, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    if-nez v8, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move-object v4, v6

    check-cast v4, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    invoke-virtual {v8, v7, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    :cond_7
    if-eqz v1, :cond_8

    if-nez p4, :cond_9

    :cond_8
    :goto_1
    return v3

    :cond_9
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getNextLevelIndexStr(ILjava/lang/String;)Ljava/lang/String;
    .locals 22

    move-object/from16 v9, p2

    if-nez v9, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getSelection(I)Ljava/lang/String;

    move-result-object v9

    :cond_0
    if-nez v9, :cond_1

    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_3

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v12

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_2

    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v14

    const/4 v7, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move v11, v12

    :goto_1
    if-ge v11, v14, :cond_6

    invoke-virtual {v5, v11}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v0, v15, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    move/from16 v18, v0

    if-nez v18, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move-object v13, v15

    check-cast v13, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_7
    if-ltz v7, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v18, -0x1

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0
.end method

.method private getSelection(I)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCurrentChar()Ljava/lang/Character;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private handleMove(Landroid/graphics/PointF;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    const/4 v0, 0x0

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-gez v0, :cond_7

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->feedPtToIndexView(ILandroid/graphics/PointF;)Z

    return v6

    :pswitch_0
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    if-lez v1, :cond_6

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    if-lez v0, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPreMatching()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, v3, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp(Landroid/graphics/PointF;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, -0x1

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->unPressDelayed()Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setVisibility(I)V

    :cond_2
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    const/4 v2, 0x1

    return v2
.end method

.method private showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ge p3, v7, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    add-int/lit8 v3, p3, -0x1

    invoke-direct {p0, v3, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getNextLevelIndexStr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getMidYForCurrentChar()F

    move-result v1

    const/high16 v5, -0x4080

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    iput v1, v4, Landroid/graphics/PointF;->y:F

    :goto_1
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    move v5, v7

    goto :goto_0

    :cond_2
    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method private updateList(ZLjava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v2, v1, v4}, Lcom/sec/android/app/twlauncher/GLListView;->setSelectionFromTop(II)V

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    invoke-direct {p0, p2, v1, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v1

    goto :goto_0
.end method

.method private updatePopup(Ljava/lang/String;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    if-eq v1, v5, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    add-int/lit8 v7, v1, -0x1

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setDrawBounds(Landroid/graphics/PointF;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLTextSurface;->clearStyles()V

    if-le v1, v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getTextColor()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setStyle(ILandroid/text/style/CharacterStyle;)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setStyle(ILandroid/text/style/CharacterStyle;)V

    :cond_1
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setText(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0
.end method

.method private updateViewIndexes(Landroid/widget/BaseAdapter;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    if-lez v0, :cond_0

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    invoke-virtual {v0, p1, p0, v1, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateViewIndexes(Landroid/widget/BaseAdapter;)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-nez v4, :cond_1

    check-cast v3, Lcom/sec/android/app/twlauncher/GLTextSurface;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setAllowWiggle(Z)V

    :cond_3
    const v4, 0x7f06003f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/GLListView;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->feedPtToIndexView(ILandroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    move v2, v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingRight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingBottom()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-direct {v1, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    iget v12, v8, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v13

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildCount()I

    move-result v5

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    if-eqz p1, :cond_0

    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    :cond_0
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    instance-of v10, v3, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    if-eqz v10, :cond_1

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :pswitch_0
    iget v7, v8, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :pswitch_1
    iget v7, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :pswitch_2
    float-to-int v10, v7

    iget v11, v8, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v7

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v10

    goto :goto_2

    :pswitch_3
    iget v10, v4, Landroid/graphics/PointF;->x:F

    sub-float v10, v7, v10

    float-to-int v10, v10

    iget v11, v8, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    float-to-int v12, v7

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    iget v10, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v10

    goto :goto_2

    :cond_1
    invoke-static {v2, v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget v10, v2, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v2, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v2, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_2
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_2

    :goto_3
    return-void

    :pswitch_4
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v11, v12, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :pswitch_5
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v11, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v9

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v0, Landroid/graphics/RectF;->right:F

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->unPressDelayed()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->pressDelayed()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    if-gez v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->handleUp(Landroid/graphics/PointF;)Z

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->handleMove(Landroid/graphics/PointF;)Z

    move-result v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateViewIndexes(Landroid/widget/BaseAdapter;)Z

    :cond_0
    return-void
.end method
