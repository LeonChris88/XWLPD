.class public Lcom/android/email/activity/ThreePaneLayout;
.super Landroid/widget/LinearLayout;
.source "ThreePaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ThreePaneLayout$SavedState;,
        Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;,
        Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;,
        Lcom/android/email/activity/ThreePaneLayout$Callback;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static mPaneState:I

.field private static sInit:Z

.field private static sIsListLeftShown:Z

.field private static sLandWidth:I

.field private static sLeftPaneLandWidth:I

.field private static sLeftPaneLandWidthConst:I

.field private static sLeftPanePortWidth:I

.field private static sLeftPanePortWidthConst:I

.field private static sPortWidth:I


# instance fields
.field private final INDEX_GONE:I

.field private final INDEX_INVISIBLE:I

.field private final INDEX_VISIBLE:I

.field private mAnimationStarted:Z

.field private mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

.field private mFirstSizeChangedDone:Z

.field private mInitialPaneState:I

.field private mLastAnimator:Landroid/animation/Animator;

.field private mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

.field private mLeftPane:Landroid/view/View;

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListFragmentShadow:Landroid/widget/LinearLayout;

.field private mMessageSendingProgressInList:Landroid/widget/LinearLayout;

.field private mMessageSendingProgressInView:Landroid/widget/LinearLayout;

.field private mMiddlePane:Landroid/view/View;

.field private mOrientation:I

.field private mRightPane:Landroid/view/View;

.field private mShowHideViews:[[[Landroid/view/View;

.field private mShowMessageSendingProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_VISIBLE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_INVISIBLE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->INDEX_GONE:I

    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/ThreePaneLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    return p1
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/ThreePaneLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    return v0
.end method

.method private getCurrentMailboxLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method private getCurrentMessageListWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public static getCurrentPaneState()I
    .locals 1

    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return v0
.end method

.method private initView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->setOrientation(I)V

    return-void
.end method

.method private isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMesssageListLeftside()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sIsListLeftShown:Z

    return v0
.end method

.method private onFirstSizeChanged()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    :cond_0
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private varargs startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V
    .locals 4

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->cancel()V

    :cond_1
    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateMessageSendingProgress()V
    .locals 8

    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    const/16 v4, 0x8

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v2, v2, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-boolean v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public changePaneState(IZZ)V
    .locals 13

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v1, :cond_2

    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    :cond_3
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    :cond_4
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    :cond_5
    const/4 p2, 0x0

    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v6

    sput p1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :pswitch_1
    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sput v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v4, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    const-string v2, "Landscape - moving to [mailbox list + message list]"

    const/4 v7, 0x0

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int v8, v1, v3

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    aget-object v9, v1, v3

    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    const/4 v1, 0x0

    aget-object v3, v9, v1

    const/4 v1, 0x1

    aget-object v4, v9, v1

    const/4 v1, 0x2

    aget-object v5, v9, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;-><init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V

    if-eqz p2, :cond_9

    const/16 v1, 0x258

    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    const-string v5, "mailboxListLeftAnim"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMailboxLeft()I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v7, v10, v11

    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "messageListWidthAnim"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMessageListWidth()I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v8, v10, v11

    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    goto/16 :goto_0

    :pswitch_2
    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sput v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v4, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v2, "Landscape - moving to [message list + message view]"

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    neg-int v7, v1

    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v2, "Landscape - moving to [message list]"

    const/4 v7, 0x0

    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    const-string v2, "Landscape - moving to [message view]"

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    const-string v2, "Landscape - moving to [mailbox list]"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :pswitch_7
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    const-string v2, "Potrait - moving to [mailbox list + message list]"

    const/4 v7, 0x0

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v8, v1, v3

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v2, "Potrait - moving to [message list + message view]"

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    :goto_3
    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    goto :goto_3

    :pswitch_9
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v7, 0x0

    sget v8, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    const-string v2, "Potrait - moving to [message list]"

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_a
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    const-string v2, "Potrait - moving to [message view]"

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/2addr v1, v3

    neg-int v8, v1

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_b
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    const-string v2, "Potrait - moving to [mailbox list]"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "Email"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public controlLeftSplitBar(I)V
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    new-instance v2, Lcom/android/email/activity/ThreePaneLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/ThreePaneLayout$2;-><init>(Lcom/android/email/activity/ThreePaneLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public controlRightSplitBar(I)V
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    new-instance v2, Lcom/android/email/activity/ThreePaneLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/ThreePaneLayout$1;-><init>(Lcom/android/email/activity/ThreePaneLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    move-object v0, v1

    check-cast v0, [[[Landroid/view/View;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    return-void
.end method

.method public getAnimationStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z

    return v0
.end method

.method public getLeftPaneId()I
    .locals 1

    const v0, 0x7f100278

    return v0
.end method

.method public getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method public getMiddlePaneId()I
    .locals 1

    const v0, 0x7f100279

    return v0
.end method

.method public getRightPaneId()I
    .locals 1

    const v0, 0x7f10027b

    return v0
.end method

.method public getVisiblePanes()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method protected initCurrentPaneState()V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    :goto_0
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto :goto_0
.end method

.method public isFullListMode()Z
    .locals 2

    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullViewMode()Z
    .locals 2

    sget v0, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed(Z)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    sget v3, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    invoke-interface {v2, v1, v3}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setRightSplitType(II)V

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v2, v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setLeftSplitType(I)V

    goto :goto_1

    :cond_2
    :pswitch_3
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :cond_4
    sget v2, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v2, :pswitch_data_1

    :pswitch_5
    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    sget v2, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    sput v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget-object v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    invoke-interface {v2, v1}, Lcom/android/email/activity/ThreePaneLayout$Callback;->setLeftSplitType(I)V

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :cond_6
    :pswitch_9
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f100278

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    const v0, 0x7f100279

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    const v0, 0x7f10027b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    const v0, 0x7f10027c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    const v0, 0x7f10027a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInList:Landroid/widget/LinearLayout;

    const v0, 0x7f10027d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageSendingProgressInView:Landroid/widget/LinearLayout;

    const v0, 0x7f1001b8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListFragmentShadow:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    new-array v0, v0, [[[Landroid/view/View;

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iput v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    :goto_1
    sget-boolean v0, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sput-boolean v6, Lcom/android/email/activity/ThreePaneLayout;->sInit:Z

    :cond_1
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidthConst:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPaneLandWidth:I

    sget v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidthConst:I

    sput v0, Lcom/android/email/activity/ThreePaneLayout;->sLeftPanePortWidth:I

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->setLeftPane(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x6

    new-array v0, v0, [[[Landroid/view/View;

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v6

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [[Landroid/view/View;

    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v3, v2, v5

    aput-object v2, v1, v5

    new-array v2, v5, [Landroid/view/View;

    aput-object v2, v1, v6

    new-array v2, v7, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    goto/16 :goto_0

    :cond_3
    iput v6, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto/16 :goto_1

    :cond_4
    iput v5, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    iput v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->onFirstSizeChanged()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-void
.end method

.method public setFragmentWidth(I)V
    .locals 5

    const/4 v2, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mOrientation:I

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sLandWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isFullListMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    add-int/lit8 v1, v1, -0x8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_3

    :pswitch_8
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    sget v1, Lcom/android/email/activity/ThreePaneLayout;->sPortWidth:I

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCommandButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setMailboxListLeftAnim(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageListWidthAnim(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    return-void
.end method

.method public setVisibleMessageSendingProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowMessageSendingProgress:Z

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->updateMessageSendingProgress()V

    return-void
.end method

.method public showLeftPane()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    return-void
.end method

.method public showMiddlePane()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    return-void
.end method

.method public showMiddlePane(Z)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    return-void
.end method

.method public showRightOnlyPane()V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    return-void
.end method

.method public showRightPane()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    return-void
.end method

.method public showRightPane(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZZ)V

    return-void
.end method
