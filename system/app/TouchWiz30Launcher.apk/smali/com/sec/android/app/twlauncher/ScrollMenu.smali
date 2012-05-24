.class public Lcom/sec/android/app/twlauncher/ScrollMenu;
.super Landroid/widget/LinearLayout;
.source "ScrollMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;,
        Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

.field private mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLongClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;

.field private mTitle:Lcom/sec/android/app/twlauncher/GLTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v1, 0x12c

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-void
.end method


# virtual methods
.method public activate(Landroid/widget/ListAdapter;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/GLGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    const/high16 v1, 0x4270

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    return-void
.end method

.method public deactivate()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 6

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    cmpl-float v2, v0, v5

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateClipRegion(Landroid/view/View;Z)V

    cmpg-float v2, v0, v3

    if-gez v2, :cond_0

    sub-float v2, v3, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v5, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->computeScroll()V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLTextView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    const v2, 0x3ecccccd

    invoke-virtual {p1, v5, v5, v5, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v5, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLTextView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->computeScroll()V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLGridView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLGridView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLGridView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLGridView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    :cond_2
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->awakenScrollBars()Z

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/GLGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getBackgroundHeight()F
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getFactor()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLTextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLGridView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

    invoke-interface {v0, p0, p3, p4, p5}, Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;->onItemClick(Lcom/sec/android/app/twlauncher/ScrollMenu;IJ)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
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

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLongClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLongClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;

    invoke-interface {v1, p0, p3, p4, p5}, Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/app/twlauncher/ScrollMenu;IJ)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

    return-void
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->addHeightProvider(Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;)V

    return-void
.end method
