.class Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
.super Ljava/lang/Object;
.source "ThreePaneLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mLogLabel:Ljava/lang/String;

.field private final mPreviousVisiblePanes:I

.field private final mViewsGone:[Landroid/view/View;

.field private final mViewsInvisible:[Landroid/view/View;

.field private final mViewsVisible:[Landroid/view/View;

.field final synthetic this$0:Lcom/android/email/activity/ThreePaneLayout;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mLogLabel:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    iput-object p4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    iput-object p5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    iput p6, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/email/activity/ThreePaneLayout;->access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z

    iget-boolean v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "end"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/activity/ThreePaneLayout$Callback;->makeMessageView()V

    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChangedAfterAni()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4, v6}, Lcom/android/email/activity/ThreePaneLayout;->access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z

    const-string v4, "start"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v7}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$700(Lcom/android/email/activity/ThreePaneLayout;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginListLand()I

    move-result v4

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$700(Lcom/android/email/activity/ThreePaneLayout;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginViewLand()I

    move-result v4

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    invoke-static {v7}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    goto :goto_1
.end method
