.class public Lcom/sec/android/app/camera/ZoomControls;
.super Landroid/widget/LinearLayout;
.source "ZoomControls.java"


# instance fields
.field private final mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

.field private final mZoomOut:Lcom/sec/android/app/camera/ZoomButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/ZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomControls;->setFocusable(Z)V

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ZoomButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    const v1, 0x7f080061

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ZoomControls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ZoomButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    return-void
.end method

.method private fade(IFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/ZoomControls;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getIsZoomInEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getIsZoomOutEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButton;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    const/16 v0, 0x8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ZoomControls;->fade(IFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setIsZoomInEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setEnabled(Z)V

    return-void
.end method

.method public setIsZoomOutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ZoomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setZoomSpeed(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomIn:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/ZoomButton;->setZoomSpeed(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomControls;->mZoomOut:Lcom/sec/android/app/camera/ZoomButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/ZoomButton;->setZoomSpeed(J)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/ZoomControls;->fade(IFF)V

    return-void
.end method
