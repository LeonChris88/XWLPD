.class Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;
.super Landroid/view/ViewGroup;
.source "AddWidgetDialogItemFrame.java"


# instance fields
.field protected mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 8

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    cmpl-float v0, v4, v7

    if-lez v0, :cond_1

    sub-float v0, v4, v7

    sub-float v1, v5, v6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    mul-float v0, v5, v7

    div-float/2addr v0, v4

    sub-float v0, v6, v0

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    div-float v0, v7, v4

    div-float v1, v7, v4

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    const/4 v0, 0x0

    return v0

    :cond_1
    cmpl-float v0, v5, v6

    if-lez v0, :cond_2

    mul-float v0, v4, v6

    div-float/2addr v0, v5

    sub-float v0, v7, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    div-float v0, v6, v5

    div-float v1, v6, v5

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    goto :goto_0

    :cond_2
    cmpg-float v0, v4, v7

    if-gez v0, :cond_3

    sub-float v0, v7, v4

    div-float/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    :cond_3
    cmpg-float v0, v5, v6

    if-gez v0, :cond_0

    sub-float v0, v6, v5

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLChildSurface;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/16 v2, 0x1e0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
