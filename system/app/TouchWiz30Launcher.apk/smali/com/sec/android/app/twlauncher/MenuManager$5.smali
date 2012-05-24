.class Lcom/sec/android/app/twlauncher/MenuManager$5;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-boolean v3, v3, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->showMotionDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$1000(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager$5;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v2

    goto :goto_0
.end method
