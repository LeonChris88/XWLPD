.class Landroid/webkit/WebTextView$MyResultReceiver;
.super Landroid/os/ResultReceiver;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebTextView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebTextView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebTextView$MyResultReceiver;->this$0:Landroid/webkit/WebTextView;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView$MyResultReceiver;->this$0:Landroid/webkit/WebTextView;

    invoke-static {v0}, Landroid/webkit/WebTextView;->access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebTextView$MyResultReceiver;->this$0:Landroid/webkit/WebTextView;

    invoke-static {v0}, Landroid/webkit/WebTextView;->access$000(Landroid/webkit/WebTextView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->revealSelection()V

    :cond_0
    return-void
.end method
