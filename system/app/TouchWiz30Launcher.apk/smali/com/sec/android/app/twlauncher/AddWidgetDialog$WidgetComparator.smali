.class Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;
.super Ljava/lang/Object;
.source "AddWidgetDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    instance-of v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    if-eqz v5, :cond_1

    check-cast p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v4, p1

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v4, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "AddWidgetDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Getting lable of package ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
