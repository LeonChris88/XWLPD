.class Lcom/sec/android/app/twlauncher/Launcher$1;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string v5, "Launcher"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "mReceiver ignored. Context: %x, Current Launcher: %x"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v6, "launcher.db"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleted a database file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_USER_PRESENT mIsActive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMenuManager.isOpened()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    iget v6, v6, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    goto/16 :goto_0

    :cond_4
    const-string v5, "android.intent.action.WIDGETS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/Launcher;->access$900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->access$1000(Lcom/sec/android/app/twlauncher/Launcher;Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    :cond_5
    const-string v5, "android.intent.action.SHORTCUTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$1100(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto/16 :goto_0

    :cond_6
    const-string v5, "android.intent.action.WALLPAPER_SETTINGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$1200(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "com.android.samsungtest.AnswerLauncherDisplay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SmdPba"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    :cond_8
    const-string v5, "UniqueNumber"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    sput-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->invalidateIMSICache()V

    :cond_a
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received factory mode info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
