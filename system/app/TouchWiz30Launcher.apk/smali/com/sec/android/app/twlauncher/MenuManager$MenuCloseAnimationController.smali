.class Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuCloseAnimationController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {p0, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected getDelayForView(Landroid/view/View;)J
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, v0, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1800(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;

    move-result-object v2

    iget v3, v1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-super {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    move-result-wide v2

    return-wide v2
.end method
