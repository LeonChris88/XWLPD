.class Lcom/sec/android/widgetapp/calculator/Panel$2;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$102(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$300(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-interface {v1, v2}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelClicked(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->access$202(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-static {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->access$400(Lcom/sec/android/widgetapp/calculator/Panel;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->bringToFront()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/calculator/Panel;->initChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel$2;->this$0:Lcom/sec/android/widgetapp/calculator/Panel;

    iget-object v1, v1, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
