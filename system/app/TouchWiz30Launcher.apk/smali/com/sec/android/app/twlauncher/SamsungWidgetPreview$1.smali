.class Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;
.super Ljava/lang/Object;
.source "SamsungWidgetPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I

    move-result v4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$400(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getCurrentScreen()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    invoke-interface {v3, v4, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;->OnSamsungWidgetPreviewSelect(ILcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$500(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getCurrentScreen()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->access$600(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;->OnSamsungAppWidgetPreviewSelect(ILandroid/content/ComponentName;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0
.end method
