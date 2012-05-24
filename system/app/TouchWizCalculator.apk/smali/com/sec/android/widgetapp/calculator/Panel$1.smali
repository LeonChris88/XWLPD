.class Lcom/sec/android/widgetapp/calculator/Panel$1;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/sec/android/widgetapp/calculator/Panel;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    move-result-object v4

    sget-object v5, Lcom/sec/android/widgetapp/calculator/Panel$State;->ANIMATING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v4, v5, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->access$102(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v5, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$300(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-interface {v5, v6}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelClicked(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel;->access$202(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$400(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->bringToFront()V

    :cond_2
    iput v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    iput v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$500(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    if-ne v4, v2, :cond_7

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->setInitialPosition:Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :goto_3
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v2, v2, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->post(Ljava/lang/Runnable;)Z

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    :goto_4
    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->setInitialPosition:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    mul-int/2addr v1, v4

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v4}, Lcom/sec/android/widgetapp/calculator/Panel;->access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I

    move-result v4

    mul-int/2addr v1, v4

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    iget v5, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;->setScroll(II)V

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->setInitialPosition:Z

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    :cond_a
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initX:I

    int-to-float v1, v1

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel$1;->initY:I

    int-to-float v4, v4

    invoke-virtual {p2, v1, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_3
.end method
