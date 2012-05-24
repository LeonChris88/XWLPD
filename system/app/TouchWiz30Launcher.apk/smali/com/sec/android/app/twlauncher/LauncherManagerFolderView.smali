.class public Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
.super Landroid/widget/FrameLayout;
.source "LauncherManagerFolderView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;,
        Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;
    }
.end annotation


# instance fields
.field protected mContent:Landroid/widget/GridView;

.field private mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

.field private mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/RegionInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    return-void
.end method

.method private touchEventHandler(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/twlauncher/RegionInfo;->getF(Landroid/graphics/PointF;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    if-ne v4, v0, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    invoke-interface {v3, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    move v3, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;-><init>(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->touchEventHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/high16 v3, 0x42c8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/RegionInfo;->clear()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/twlauncher/RegionInfo;->addF(ILandroid/graphics/RectF;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->touchEventHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    return-void
.end method

.method public setChildState(I)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
