.class Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungWidgetsLoader"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-static {v6, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-eqz v6, :cond_5

    :cond_3
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$402(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Z)Z

    :cond_4
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-static {v6, v0, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    aget-object v6, v4, v1

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.widgetapp.stockclock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    return-void
.end method
