.class Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;
.super Ljava/lang/Object;
.source "SamsungAppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->access$300(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->access$000(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->mOriginalWindowAttachCount:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->access$100(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->access$200(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->this$0:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->access$202(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;Z)Z

    :cond_0
    return-void
.end method
