.class public Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerViewForVT.java"


# instance fields
.field private mButtonGrid:Lcom/android/phone/ButtonGridLayout;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    const v10, 0x7fffffff

    const/4 v3, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_6

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    :goto_1
    return v17

    :cond_0
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v6, v17, v15

    :goto_2
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v7, v17, v16

    :goto_3
    mul-int v17, v6, v6

    mul-int v18, v7, v7

    add-int v8, v17, v18

    if-ge v8, v10, :cond_1

    move v10, v8

    move-object v3, v12

    move v4, v6

    move v5, v7

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v6, v17, v15

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v7, v17, v16

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    int-to-float v0, v4

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1

    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ButtonGridLayout;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mButtonGrid:Lcom/android/phone/ButtonGridLayout;

    return-void
.end method
