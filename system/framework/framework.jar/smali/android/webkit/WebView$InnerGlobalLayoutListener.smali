.class Landroid/webkit/WebView$InnerGlobalLayoutListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView$InnerGlobalLayoutListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setGLRectViewport()V

    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$000(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$002(Landroid/webkit/WebView;Z)Z

    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->hackTurnOffWindowResizeAnim(Z)V

    :cond_0
    return-void
.end method
