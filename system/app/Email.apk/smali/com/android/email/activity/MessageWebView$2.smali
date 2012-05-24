.class Lcom/android/email/activity/MessageWebView$2;
.super Ljava/lang/Object;
.source "MessageWebView.java"

# interfaces
.implements Landroid/webkit/PinchZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageWebView;

.field final synthetic val$temp:Lcom/android/email/activity/MessageWebView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    iput-object p2, p0, Lcom/android/email/activity/MessageWebView$2;->val$temp:Lcom/android/email/activity/MessageWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/webkit/WebviewScaleGestureDetector;F)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FFF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-static {v0, p3}, Lcom/android/email/activity/MessageWebView;->access$302(Lcom/android/email/activity/MessageWebView;F)F

    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    iget-object v2, p0, Lcom/android/email/activity/MessageWebView$2;->val$temp:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/email/activity/MessageWebView;->access$102(Lcom/android/email/activity/MessageWebView;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageWebView;->access$002(Lcom/android/email/activity/MessageWebView;F)F

    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-static {v2}, Lcom/android/email/activity/MessageWebView;->access$000(Lcom/android/email/activity/MessageWebView;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageWebView;->access$202(Lcom/android/email/activity/MessageWebView;F)F

    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-static {v0}, Lcom/android/email/activity/MessageWebView;->access$100(Lcom/android/email/activity/MessageWebView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-static {v1}, Lcom/android/email/activity/MessageWebView;->access$300(Lcom/android/email/activity/MessageWebView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->setScaleChangeWebView()V

    :cond_0
    return-void
.end method
