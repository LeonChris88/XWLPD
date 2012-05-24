.class Lcom/android/email/ToolTip;
.super Landroid/view/View;
.source "ToolTip.java"


# instance fields
.field mBgPath:Landroid/graphics/Path;

.field mBgShader:Landroid/graphics/LinearGradient;

.field mDownItem:I

.field mIsDown:Z

.field mItems:Ljava/util/Vector;

.field mSeparatorB:Landroid/graphics/Path;

.field mSeparatorW:Landroid/graphics/Path;

.field mTailHeight:I

.field mTextPaint:Landroid/graphics/Paint;

.field mViewHeight:I

.field mbDrawUpsideDown:Z


# virtual methods
.method findItem(II)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/email/ToolTip;->mViewHeight:I

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/email/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/email/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/ToolTipItem;

    iget-object v4, v1, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    iget-object v4, v1, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v9, -0x100

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v9, p0, Lcom/android/email/ToolTip;->mBgShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v9, p0, Lcom/android/email/ToolTip;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v9, -0xddddde

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v9, -0x222223

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v9, p0, Lcom/android/email/ToolTip;->mSeparatorB:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/android/email/ToolTip;->mSeparatorW:Landroid/graphics/Path;

    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    iput v9, v0, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/email/ToolTip;->mViewHeight:I

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/email/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    iget-object v9, p0, Lcom/android/email/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/ToolTipItem;

    iget-boolean v9, p0, Lcom/android/email/ToolTip;->mbDrawUpsideDown:Z

    if-nez v9, :cond_1

    iget-object v9, v2, Lcom/android/email/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    add-int/2addr v10, v8

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/email/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    iget v9, p0, Lcom/android/email/ToolTip;->mDownItem:I

    if-ne v1, v9, :cond_0

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iget-object v9, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v9, v8

    iput v9, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object v9, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, v2, Lcom/android/email/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    add-int/2addr v10, v8

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    iget v12, p0, Lcom/android/email/ToolTip;->mTailHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/email/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-boolean v9, p0, Lcom/android/email/ToolTip;->mIsDown:Z

    if-ne v9, v13, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v9, p0, Lcom/android/email/ToolTip;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v9, -0x37d04003

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/android/email/ToolTip;->mItems:Ljava/util/Vector;

    iget v10, p0, Lcom/android/email/ToolTip;->mDownItem:I

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/ToolTipItem;

    iget-boolean v9, p0, Lcom/android/email/ToolTip;->mbDrawUpsideDown:Z

    if-nez v9, :cond_4

    iget-object v9, v2, Lcom/android/email/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/email/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_4
    iget-object v9, v2, Lcom/android/email/ToolTipItem;->mstrText:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v2, Lcom/android/email/ToolTipItem;->bounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    iget v12, p0, Lcom/android/email/ToolTip;->mTailHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/email/ToolTip;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    if-nez v2, :cond_1

    iput-boolean v6, p0, Lcom/android/email/ToolTip;->mIsDown:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/email/ToolTip;->findItem(II)I

    move-result v5

    iput v5, p0, Lcom/android/email/ToolTip;->mDownItem:I

    invoke-virtual {p0}, Lcom/android/email/ToolTip;->invalidate()V

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/ToolTip;->mIsDown:Z

    iput v7, p0, Lcom/android/email/ToolTip;->mDownItem:I

    invoke-virtual {p0}, Lcom/android/email/ToolTip;->invalidate()V

    invoke-virtual {p0, v3, v4}, Lcom/android/email/ToolTip;->findItem(II)I

    move-result v1

    if-eq v7, v1, :cond_0

    iget-object v5, p0, Lcom/android/email/ToolTip;->mItems:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/ToolTipItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/ToolTipItem;->onItemSelected()V

    goto :goto_0
.end method
