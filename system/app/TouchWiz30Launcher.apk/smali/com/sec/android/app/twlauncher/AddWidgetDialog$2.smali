.class Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;
.super Ljava/lang/Object;
.source "AddWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 13

    const/4 v9, 0x0

    const/4 v10, 0x1

    instance-of v11, p1, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    if-nez v11, :cond_0

    :goto_0
    return v9

    :cond_0
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v11}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->isAppWidgetPreviewVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v11}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v9, v10

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getDragView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setPhantom()V

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->isSamsungAppWidget()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v9, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.sec.android.widgetapp"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v3, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v11

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v1, v11, v12, v9}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;J[Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v0, v3}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-interface {v9, v6, v11, v0, v10}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v9

    iget v11, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v12, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v9, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->updateDragInfo(II)V

    :goto_2
    move v9, v10

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    invoke-direct {v3, v1}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getSamsungAppWidgetInfo()Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v4

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4, v7, v8}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v12, 0x2

    invoke-interface {v9, v6, v11, v0, v12}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v9

    invoke-virtual {v4, v10}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v11

    invoke-virtual {v4, v10}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->updateDragInfo(II)V

    goto :goto_2
.end method
