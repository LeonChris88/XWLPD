.class Lcom/sec/android/app/camera/ZoomButtonsController$1;
.super Landroid/content/BroadcastReceiver;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ZoomButtonsController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomButtonsController$1;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$1;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$000(Lcom/sec/android/app/camera/ZoomButtonsController;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$1;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$100(Lcom/sec/android/app/camera/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomButtonsController$1;->this$0:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-static {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->access$100(Lcom/sec/android/app/camera/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
