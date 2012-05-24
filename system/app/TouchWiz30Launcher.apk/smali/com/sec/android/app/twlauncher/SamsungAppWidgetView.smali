.class public Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
.super Landroid/widget/FrameLayout;
.source "SamsungAppWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private postCheckForLongClick()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;-><init>(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->postCheckForLongClick()V

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
