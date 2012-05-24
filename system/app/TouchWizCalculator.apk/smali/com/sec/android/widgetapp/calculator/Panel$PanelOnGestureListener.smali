.class Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/sec/android/widgetapp/calculator/Panel;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->initChange()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-static {v0, p4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1402(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, v1, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_0
    move p4, p3

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    sget-object v3, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/calculator/Panel;->access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v2

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v2, v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1802(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v2, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1502(Lcom/sec/android/widgetapp/calculator/Panel;F)F

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->invalidate()V

    :cond_1
    return v6

    :cond_2
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setScroll(II)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollX:F

    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->scrollY:F

    return-void
.end method
