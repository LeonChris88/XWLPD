.class Lcom/sec/android/app/twlauncher/AppShortcutZone$2;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    instance-of v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_0

    instance-of v4, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    packed-switch v2, :pswitch_data_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
