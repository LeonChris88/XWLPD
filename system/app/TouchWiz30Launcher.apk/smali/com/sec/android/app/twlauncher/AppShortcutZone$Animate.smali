.class Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animate"
.end annotation


# instance fields
.field private mAnimTime:I

.field private mRect:Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/Scroller;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mRect:Landroid/graphics/Rect;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mAnimTime:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AnimRun "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$400(Lcom/sec/android/app/twlauncher/AppShortcutZone;Landroid/view/View;IIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public start(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mTargetView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mScroller:Landroid/widget/Scroller;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mAnimTime:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method
