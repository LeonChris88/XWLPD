.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsLoader"
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

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationsLoader: "

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


# virtual methods
.method isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 37

    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader.run: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    const/16 v34, 0x0

    :goto_0
    invoke-static/range {v34 .. v34}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v25, Landroid/content/Intent;

    const-string v34, "android.intent.action.MAIN"

    const/16 v35, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v34, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v24, :cond_0

    if-nez v4, :cond_2

    :cond_0
    const-string v34, "Launcher.LauncherModel"

    const-string v35, "Launcher/mApplicationsAdapter destroyed before ApplicationsLoader.run"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    :goto_1
    return-void

    :cond_1
    const/16 v34, 0xa

    goto :goto_0

    :cond_2
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$002(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v6

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_3

    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_3
    const/16 v34, 0x2000

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v22

    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900()Ljava/util/HashSet;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->clear()V

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_4

    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900()Ljava/util/HashSet;

    move-result-object v34

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_8

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/UserFolderModel;->clear()V

    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v34

    if-lez v34, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_6
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/16 v34, 0x2

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v34, 0x4

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x5

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v34, 0x7

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move-wide/from16 v1, v19

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setNormalModeInfo(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->assignNormalToEdit()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setDefaultSort(I)V

    const/16 v34, 0x6

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-object/from16 v0, v16

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setCreateTime(J)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->markAsClean()V

    const-string v34, "DebugPlacement Folder"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Loaded folder "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-eqz v34, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v34

    move-object/from16 v0, v34

    if-ne v0, v4, :cond_11

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v7, :cond_b

    move-wide/from16 v0, v19

    iput-wide v0, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v28

    invoke-virtual {v7, v0, v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    move-wide/from16 v0, v29

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    invoke-virtual {v7, v15}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    if-nez v32, :cond_a

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    :cond_a
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationInfo title="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " page="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " cell="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v23

    if-nez v23, :cond_f

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageUnmounted(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v34

    if-nez v34, :cond_c

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageMounted(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_f

    :cond_c
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[loadAllAppsByBatch] isStoredExternalStorage - cn : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", title : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move/from16 v0, v28

    invoke-virtual {v5, v0, v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    invoke-virtual {v5, v15}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const/high16 v34, 0x1020

    move/from16 v0, v34

    invoke-virtual {v5, v10, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    if-nez v32, :cond_e

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f02006d

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const-wide/16 v12, 0x0

    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_d

    :try_start_0
    iget-object v0, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x2000

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_7
    invoke-virtual {v5, v12, v13}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_f
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader-run() - (toRemove) - cn : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", mApplicationsAdapter: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", items loaded: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v34, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_8
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    goto/16 :goto_1

    :cond_11
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader stopped before loading complete: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_0
    move-exception v34

    goto/16 :goto_7
.end method

.method stop()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationsLoader.stop: "

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
