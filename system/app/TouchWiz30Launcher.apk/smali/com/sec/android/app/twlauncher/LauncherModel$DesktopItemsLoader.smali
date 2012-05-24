.class Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopItemsLoader"
.end annotation


# instance fields
.field private final mIsLaunching:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadApplications:Z

.field private final mLocaleChanged:Z

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;ZZZ)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    iput-boolean p5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopItemsLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    return v0
.end method


# virtual methods
.method public canContinue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 79

    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DesktopItemsLoader.run: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/Launcher;

    if-nez v11, :cond_0

    const-string v4, "Launcher.LauncherModel"

    const-string v6, "Launcher destroyed before DesktopItemsLoader.run"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v54

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1702(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1802(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1902(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2002(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v40

    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v69

    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v4, "_id"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    const-string v4, "intent"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v53

    const-string v4, "title"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v74

    const-string v4, "iconType"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v4, "icon"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v4, "iconPackage"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v4, "iconResource"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v4, "container"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    const-string v4, "itemType"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    const-string v4, "appWidgetId"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v4, "screen"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v70

    const-string v4, "cellX"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v4, "cellY"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v4, "spanX"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v72

    const-string v4, "spanY"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v73

    const-string v4, "uri"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v77

    const-string v4, "displayMode"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    const-string v4, "isShortcut"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v71

    const-string v4, "multipleSize"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v60

    const-string v59, ""

    const-wide/16 v57, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v45

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v4, :cond_18

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_18

    :try_start_1
    move/from16 v0, v56

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v0, v69

    if-lt v4, v0, :cond_2

    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed invalid screen; itemType: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", id: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v42

    :try_start_2
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "Launcher"

    const-string v6, "Desktop items loading interrupted:"

    move-object/from16 v0, v42

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2
    sparse-switch v55, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_3
    move/from16 v0, v53

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v52

    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, v52

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v51

    if-nez v55, :cond_3

    :try_start_5
    move-object/from16 v0, v61

    move-object/from16 v1, v51

    invoke-static {v0, v1, v11}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2100(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v50

    :goto_2
    if-nez v50, :cond_4

    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignore favorites id: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", intent: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_1
    move-exception v42

    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URI syntax error: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", id: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v6, v11

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2200(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v50

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v66

    move/from16 v0, v74

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v50 .. v51}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIntent(Landroid/content/Intent;)V

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v50

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v50

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v50

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v50

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v50

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, v50

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    if-nez v4, :cond_6

    if-eqz v66, :cond_6

    move-object/from16 v0, v66

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v43, v0

    and-int/lit8 v4, v43, 0x1

    if-nez v4, :cond_5

    move/from16 v0, v43

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_7

    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    :goto_3
    const-string v25, "com.android.stk"

    const/16 v24, 0x0

    const/16 v23, 0x1

    const/16 v26, 0x5

    const-string v4, "phone"

    invoke-virtual {v11, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v66

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.stk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "gsm.STK_SETUP_MENU"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    :cond_6
    packed-switch v33, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v45

    invoke-static {v4, v0, v12, v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    :goto_4
    move-object/from16 v0, v50

    invoke-static {v0, v11}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2400(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual/range {v75 .. v75}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b

    const/16 v24, 0x1

    :cond_9
    :goto_5
    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    move-object/from16 v0, v50

    invoke-static {v11, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    :cond_a
    const/16 v24, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {v75 .. v75}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_9

    const/16 v24, 0x1

    goto :goto_5

    :pswitch_0
    invoke-static/range {v51 .. v51}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v50

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v50

    move-wide/from16 v1, v57

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    :goto_6
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v59, v0

    :cond_c
    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    const-wide/16 v36, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v6, 0x9

    if-lt v4, v6, :cond_e

    :try_start_6
    move-object/from16 v0, v50

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2000

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v0, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v36, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_e
    :goto_7
    :try_start_7
    move-object/from16 v0, v50

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    goto :goto_6

    :sswitch_1
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, v45

    move-wide/from16 v1, v47

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v44

    move/from16 v0, v74

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    move-wide/from16 v0, v47

    move-object/from16 v2, v44

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v44

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_f

    move/from16 v0, v71

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->shortCut:I

    :cond_f
    packed-switch v33, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, v39

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_2
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    move/from16 v0, v77

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v63

    if-nez v63, :cond_10

    if-nez v54, :cond_10

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, v45

    move-wide/from16 v1, v47

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2500(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v16

    move/from16 v0, v53

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v52

    const/16 v51, 0x0

    if-eqz v52, :cond_11

    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, v52

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v51

    :cond_11
    :goto_8
    :try_start_9
    move/from16 v0, v74

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    move-wide/from16 v0, v47

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v16

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move/from16 v0, v77

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    move-object/from16 v0, v51

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    move/from16 v0, v41

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    move-object v12, v5

    move v13, v7

    move v14, v8

    move v15, v9

    invoke-static/range {v11 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2600(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    packed-switch v33, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/twlauncher/Widget;->makeSearch()Lcom/sec/android/app/twlauncher/Widget;

    move-result-object v78

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_12

    const-string v4, "Launcher"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP  ignoring!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v78

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move/from16 v0, v33

    int-to-long v12, v0

    move-object/from16 v0, v78

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, v39

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_4
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    move/from16 v0, v28

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v62

    if-nez v54, :cond_14

    if-eqz v62, :cond_13

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_13

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    :cond_13
    const-string v4, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v47

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " appWidgetId="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    new-instance v29, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(ILjava/lang/String;)V

    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v29

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move/from16 v0, v72

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move/from16 v0, v73

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move/from16 v0, v60

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v29

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_15

    const-string v4, "Launcher"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v12, v4

    move-object/from16 v0, v29

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_5
    move/from16 v0, v49

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    new-instance v68, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-direct/range {v68 .. v68}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    move-wide/from16 v0, v47

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v70

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move/from16 v0, v31

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move/from16 v0, v32

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move/from16 v0, v72

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move/from16 v0, v73

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_16

    const-string v4, "Launcher"

    const-string v6, "SamsungWidget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v12, v4

    move-object/from16 v0, v68

    iput-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move/from16 v0, v53

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v52

    const/16 v51, 0x0

    const/4 v4, 0x0

    :try_start_a
    move-object/from16 v0, v52

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v51

    :try_start_b
    move-object/from16 v0, v51

    move-object/from16 v1, v68

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v67

    if-nez v67, :cond_17

    const-string v4, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t resolve SamsungWidget\'s activity. Deleting it. id:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v47

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    :catch_2
    move-exception v42

    goto/16 :goto_1

    :cond_17
    :try_start_c
    move-object/from16 v0, v67

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    move-object/from16 v0, v67

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v68

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_3
    move-exception v42

    const-string v4, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it. id:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v47

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    :cond_18
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v4, :cond_1d

    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v64

    if-lez v64, :cond_1a

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const/16 v46, 0x0

    :goto_9
    move/from16 v0, v46

    move/from16 v1, v64

    if-ge v0, v1, :cond_19

    move-object/from16 v0, v65

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Long;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x0

    invoke-static {v12, v13, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v46, v46, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->clear()V

    :cond_1a
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2702(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DesktopItemsLoader: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", items: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", widgets: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", Samsung widgets: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;

    move-object/from16 v18, p0

    move-object/from16 v22, v11

    invoke-direct/range {v17 .. v22}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/Launcher;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    if-eqz v4, :cond_1c

    const-string v4, "Launcher.LauncherModel"

    const-string v6, "DesktopItemsLoader. Start applications loader"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    invoke-static {v4, v11, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2800(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V

    :cond_1c
    :goto_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    goto/16 :goto_0

    :cond_1d
    const-string v4, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DesktopItemsLoader stopped before loading complete: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_4
    move-exception v4

    goto/16 :goto_8

    :catch_5
    move-exception v4

    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e9 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_2
    .end packed-switch
.end method

.method stop()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopItemsLoader.stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
