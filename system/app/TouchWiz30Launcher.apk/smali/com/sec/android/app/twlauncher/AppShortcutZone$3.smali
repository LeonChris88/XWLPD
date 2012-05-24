.class Lcom/sec/android/app/twlauncher/AppShortcutZone$3;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 14

    const/4 v12, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    move v4, v12

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    instance-of v0, v10, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_3

    move-object v6, v10

    check-cast v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v2, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-interface {v0, p1, v1, v2, v12}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    :cond_3
    :goto_1
    move v4, v12

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v0, v9, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    iget v0, v9, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$202(Lcom/sec/android/app/twlauncher/AppShortcutZone;I)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    new-instance v5, Landroid/graphics/PointF;

    int-to-float v1, v7

    int-to-float v13, v11

    invoke-direct {v5, v1, v13}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
