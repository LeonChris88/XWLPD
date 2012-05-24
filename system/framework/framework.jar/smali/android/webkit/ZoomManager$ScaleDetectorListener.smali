.class Landroid/webkit/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v4, v4, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v4, v4, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    invoke-interface {v4, p1, v5}, Landroid/webkit/PinchZoomListener;->handleScale(Landroid/webkit/WebviewScaleGestureDetector;F)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getTiltUse()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x438c

    div-float/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    add-float v1, v4, v5

    :goto_1
    invoke-static {}, Landroid/webkit/ZoomManager;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detector.getTiltUse() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getTiltUse()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mActualScale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/webkit/ZoomManager;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scale = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getCurrTilt() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  detector.getScaleFactor() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    :cond_3
    move v0, v3

    :goto_2
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$1400(Landroid/webkit/ZoomManager;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_4
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4, v3}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;Z)Z

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    const/high16 v5, 0x3fa0

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_3
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v1

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {}, Landroid/webkit/ZoomManager;->access$1500()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    move v3, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    mul-float v1, v4, v5

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    :cond_8
    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    move v3, v0

    goto/16 :goto_0
.end method

.method public isPanningOnly(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 9

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v2

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)F

    move-result v3

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v7

    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$902(Landroid/webkit/ZoomManager;F)F

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v7

    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;F)F

    cmpl-float v6, v2, v5

    if-nez v6, :cond_0

    cmpl-float v6, v3, v5

    if-nez v6, :cond_0

    move v1, v5

    :goto_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$1100(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSpan()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v0, v6, v7

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$1200(Landroid/webkit/ZoomManager$FocusMovementQueue;)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    iget v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v5, v0

    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    :goto_2
    return v4

    :cond_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v6

    sub-float/2addr v6, v2

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_2
.end method

.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$800(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 6

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$300(Landroid/webkit/ZoomManager;)F

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/webkit/PinchZoomListener;->onScaleBegin(FFF)Z

    :cond_0
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$602(Landroid/webkit/ZoomManager;Z)Z

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$800(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$902(Landroid/webkit/ZoomManager;F)F

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-static {v2, v3}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;F)F

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->startZoom()V

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->onPinchToZoomAnimationStart()V

    const/4 v2, 0x0

    iput v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltStartTime(J)J

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->registerTiltListener()V

    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    invoke-interface {v3, p1}, Landroid/webkit/PinchZoomListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    :cond_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1400(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v3, v1}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;Z)Z

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1700(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1602(Landroid/webkit/ZoomManager;I)I

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1900(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1802(Landroid/webkit/ZoomManager;I)I

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$2000(Landroid/webkit/ZoomManager;)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    :cond_2
    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-static {v2}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->onPinchToZoomAnimationEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    iget-object v2, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->unregisterTiltListener()V

    invoke-virtual {p1, v1}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1
.end method
