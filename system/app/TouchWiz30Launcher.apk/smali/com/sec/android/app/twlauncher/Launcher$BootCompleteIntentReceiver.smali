.class Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "BootCompleteIntentReceiver ignored. Context: %x, Current Launcher: %x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5200(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->unblockDispatchDraw()V

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$5202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    goto :goto_0
.end method
