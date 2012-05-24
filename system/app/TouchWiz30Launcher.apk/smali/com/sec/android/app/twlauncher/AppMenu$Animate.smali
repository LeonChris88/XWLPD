.class Lcom/sec/android/app/twlauncher/AppMenu$Animate;
.super Ljava/lang/Object;
.source "AppMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animate"
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/Scroller;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppMenu;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/AppMenu;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public start(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 7

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mTargetView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mScroller:Landroid/widget/Scroller;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppMenu;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method
