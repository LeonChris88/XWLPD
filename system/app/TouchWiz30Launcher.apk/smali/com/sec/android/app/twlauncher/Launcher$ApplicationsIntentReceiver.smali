.class Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    if-ne p1, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const-string v7, "Launcher"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "ApplicationsIntentReceiver ignored. Context: %x, Current Launcher: %x"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.extra.REPLACING"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "application intent received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", replacing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v6, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    const-string v7, "Launcher.LauncherModel"

    const-string v8, "  --> remove package"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->removePackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;

    invoke-direct {v8, p0, v4}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_6
    if-nez v6, :cond_a

    const-string v7, "Launcher.LauncherModel"

    const-string v8, "  --> add package"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_a
    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  --> update package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->updatePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$5000(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$3;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_d
    const-string v0, "com.android.stk"

    const-string v7, "com.android.stk"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    :cond_e
    const-string v7, "Launcher.LauncherModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  --> sync package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_10

    :cond_f
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$5000(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
