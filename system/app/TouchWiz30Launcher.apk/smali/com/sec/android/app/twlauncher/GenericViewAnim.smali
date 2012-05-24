.class public Lcom/sec/android/app/twlauncher/GenericViewAnim;
.super Ljava/lang/Object;
.source "GenericViewAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;
    }
.end annotation


# instance fields
.field private mAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLAnim;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstDraw:Z

.field private mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

.field private mOwnerDrawn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mFirstDraw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mOwnerDrawn:Z

    return-void
.end method


# virtual methods
.method public addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z
    .locals 7

    new-instance v0, Lcom/sec/android/app/twlauncher/GLAnim;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/GLAnim;-><init>(Landroid/view/animation/Interpolator;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/GLAnim;->setParams(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    invoke-virtual {v0, p4}, Lcom/sec/android/app/twlauncher/GLAnim;->setLstnr(Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clear()V
    .locals 3

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLAnim;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->forceEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mFirstDraw:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    invoke-interface {v5, p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;->onAnimStart(Lcom/sec/android/app/twlauncher/GenericViewAnim;)V

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mFirstDraw:Z

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLAnim;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLAnim;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->getState()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->removeAnim(Lcom/sec/android/app/twlauncher/GLAnim;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    invoke-interface {v4, p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GenericViewAnim;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->getProgress()F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    invoke-interface {v4, p0, v3}, Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;->onAnimProgress(Lcom/sec/android/app/twlauncher/GenericViewAnim;F)V

    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwnerDrawn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mOwnerDrawn:Z

    return v0
.end method

.method public removeAnim(Lcom/sec/android/app/twlauncher/GLAnim;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->forceEnd()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOwnerDrawn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mOwnerDrawn:Z

    return-void
.end method
