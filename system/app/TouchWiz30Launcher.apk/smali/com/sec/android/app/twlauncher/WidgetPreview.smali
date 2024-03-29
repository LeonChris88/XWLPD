.class public Lcom/sec/android/app/twlauncher/WidgetPreview;
.super Landroid/widget/FrameLayout;
.source "WidgetPreview.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    const/4 v2, 0x0

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v2, v6, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v3, v6, 0x2

    add-int v6, v2, v4

    add-int v7, v3, v1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method
