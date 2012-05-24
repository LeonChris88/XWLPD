.class Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "maximum_power_saving"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$5300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v2

    if-nez v0, :cond_0

    const/16 v1, 0x10

    :goto_0
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setFrameDelay(I)V

    return-void

    :cond_0
    const/16 v1, 0x21

    goto :goto_0
.end method
