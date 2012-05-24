.class Lcom/sec/android/widgetapp/calculator/Panel$4;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/calculator/Panel;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$4;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$4;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$4;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$4;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$500(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$4;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->onBtnFocus(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$4;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$1900(Lcom/sec/android/widgetapp/calculator/Panel;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$4;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->ANIMATING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;

    return-void
.end method
