.class Landroid/webkit/WebView$11;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->doShortPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-static {v0}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)V

    return-void
.end method
