.class Landroid/widget/BounceController$BounceScrollRunnableDefault;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/widget/BounceController$BounceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BounceScrollRunnableDefault"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BounceScrollRunnableDefault"


# instance fields
.field mBounceDuration:F

.field mBounceExtentCoef:F

.field private mStartFromDrag:Z

.field private mStartTime:J

.field final synthetic this$0:Landroid/widget/BounceController;


# direct methods
.method public constructor <init>(Landroid/widget/BounceController;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43c8

    iput v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    return-void
.end method

.method private computeBounceExtent(F)F
    .locals 3

    iget v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    sget-object v1, Landroid/widget/BounceController;->mTweener:Landroid/widget/BounceController$Tweener;

    iget-boolean v2, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    invoke-interface {v1, v2, p1}, Landroid/widget/BounceController$Tweener;->compute(ZF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v0}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    div-float v2, v3, v4

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-direct {p0, v2}, Landroid/widget/BounceController$BounceScrollRunnableDefault;->computeBounceExtent(F)F

    move-result v4

    iput v4, v3, Landroid/widget/BounceController;->mBounceExtent:F

    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/BounceController;->mBounceExtent:F

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget-object v3, v3, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget-object v3, v3, Landroid/widget/BounceController;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease2()V

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget-object v3, v3, Landroid/widget/BounceController;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease2()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;->cancel()V

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public start(F)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v4, -0x4080

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v3, "BounceScrollRunnableDefault"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), mBounceExtent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget v6, v6, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;->cancel()V

    cmpl-float v3, p1, v7

    if-nez v3, :cond_2

    iput-boolean v9, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$000(Landroid/widget/BounceController;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    div-float v0, v4, v3

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v3

    aget v3, v3, v9

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v4}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v4

    aget v4, v4, v8

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v4}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v4

    aget v4, v4, v8

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    iget v3, v3, Landroid/widget/BounceController;->mBounceExtent:F

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartTime:J

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    const-string v3, "BounceScrollRunnableDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBounceExtentCoef = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v5}, Landroid/widget/BounceController;->access$300(Landroid/widget/BounceController;)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    cmpg-float v3, p1, v7

    if-gez v3, :cond_4

    move v3, v4

    :goto_2
    iget-object v5, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v5}, Landroid/widget/BounceController;->access$300(Landroid/widget/BounceController;)F

    move-result v5

    mul-float p1, v3, v5

    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v5}, Landroid/widget/BounceController;->access$300(Landroid/widget/BounceController;)F

    move-result v5

    div-float v2, v3, v5

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v3

    const/4 v5, 0x3

    aget v3, v3, v5

    iget-object v5, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v5}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v5

    aget v5, v5, v10

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget-object v5, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v5}, Landroid/widget/BounceController;->access$200(Landroid/widget/BounceController;)[I

    move-result-object v5

    aget v5, v5, v10

    int-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$000(Landroid/widget/BounceController;)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :goto_3
    int-to-float v3, v3

    iget-object v5, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v5}, Landroid/widget/BounceController;->access$400(Landroid/widget/BounceController;)F

    move-result v5

    mul-float v1, v3, v5

    mul-float v3, v1, v2

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    cmpl-float v3, p1, v7

    if-lez v3, :cond_0

    iget v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    mul-float/2addr v3, v4

    iput v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    goto/16 :goto_1

    :cond_4
    const/high16 v3, 0x3f80

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/widget/BounceController$BounceScrollRunnableDefault;->this$0:Landroid/widget/BounceController;

    invoke-static {v3}, Landroid/widget/BounceController;->access$100(Landroid/widget/BounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    goto :goto_3
.end method
