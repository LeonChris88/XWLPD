.class Lcom/sec/android/app/twlauncher/MenuManager$4;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v7, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v7, :cond_2

    move-object v6, p1

    check-cast v6, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    instance-of v7, v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v7, :cond_3

    move-object v1, v5

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget v7, v7, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v7, :pswitch_data_0

    iget-boolean v7, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v7, v3, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$700(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v7, p1, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$900(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    goto :goto_0

    :cond_3
    instance-of v7, v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v7, :cond_0

    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget v7, v7, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v7, :pswitch_data_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v7, v7, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_0

    instance-of v7, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v7, v7, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.samsung.swift.app.kiesair"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.infraware.polarisoffice"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.vlingo.client.samsung"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.sec.android.im"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/sec/android/app/twlauncher/MenuManager;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getUninstallLockPackageList()Ljava/util/ArrayList;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/twlauncher/MenuManager;->mUninstallLockPackages:Ljava/util/ArrayList;

    :cond_6
    sget-object v7, Lcom/sec/android/app/twlauncher/MenuManager;->mUninstallLockPackages:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    :goto_1
    sget-object v7, Lcom/sec/android/app/twlauncher/MenuManager;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    sget-object v7, Lcom/sec/android/app/twlauncher/MenuManager;->mUninstallLockPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
