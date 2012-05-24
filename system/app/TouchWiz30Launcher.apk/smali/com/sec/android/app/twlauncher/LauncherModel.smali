.class public Lcom/sec/android/app/twlauncher/LauncherModel;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherModel$1;,
        Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;,
        Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;
    }
.end annotation


# static fields
.field private static mInstalledAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private final mAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mApplicationsLoaded:Z

.field private mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

.field private mApplicationsLoaderThread:Ljava/lang/Thread;

.field private mCurrentLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItemsLoaded:Z

.field private mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

.field private mDesktopLoaderThread:Ljava/lang/Thread;

.field private mDesktopSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

.field private mPkgModFlag:Z

.field private mPkgModReceiver:Landroid/content/BroadcastReceiver;

.field private final mTopAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    return-void
.end method

.method private abortLoaders()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Launcher.LauncherModel"

    const-string v1, "abortLoaders"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->stop()V

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->stop()V

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    return p1
.end method

.method static synthetic access$1200()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1300(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(JJ)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadLiveFolderIcon(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$2702(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v9, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v6

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v7, v1

    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    const-string v1, "component_name"

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v7, v6

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v7, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v6, v7

    goto :goto_3

    :cond_5
    move v6, v7

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_0
.end method

.method private addEnabledAndUpdateActivities(Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ")Z"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p2, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-static {v7, v8, v5, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v5, v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p2, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return v1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V
    .locals 3

    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    if-eqz p7, :cond_1

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    :cond_0
    const-string v0, "insert"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method static addItemToDatabaseUserFolderWithShortcut(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZI)V
    .locals 4

    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    const-string v0, "isShortcut"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_1

    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    :cond_0
    const-string v0, "insert"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method private addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 6

    iget v4, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v4, p2, :cond_1

    array-length v0, p1

    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v1, v4

    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    :goto_0
    if-ge v2, v0, :cond_1

    iget v4, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_1

    iget v3, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    :goto_1
    if-ge v3, v1, :cond_0

    iget v4, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    aget-object v4, p1, v2

    const/4 v5, 0x1

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8

    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8

    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabaseForUserFolder(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "delete"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "delete"

    invoke-static {v1, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized dropApplicationCache()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "dropApplicationCache"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method private static findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/LiveFolderInfo;"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    return-object v0
.end method

.method private findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    return-object v0
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 7

    const/4 v3, 0x0

    const/high16 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2000

    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v6

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    iput v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    invoke-virtual {v3, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-virtual {v3, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_6
    iput v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_7

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    goto/16 :goto_0

    :cond_7
    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    goto/16 :goto_0
.end method

.method private getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 13

    new-instance v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    const/4 v11, 0x1

    iput v11, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    :goto_0
    return-object v6

    :pswitch_0
    move/from16 v0, p4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v11, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v11}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v8, v11, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v9, v11, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_1
    move/from16 v0, p6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v11, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-static {v1, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method static getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static integerCompare(II)I
    .locals 1

    const/4 v0, 0x0

    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isStoredExternalStorageMounted(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isStoredExternalStorageMounted] packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bRetVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static isStoredExternalStorageUnmounted(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isStoredExternalStorageUnmounted] packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bRetVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "page"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "cell"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "component_name"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "default_sort"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "create_time"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "parent_id,page,cell"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static loadLiveFolderIcon(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 10

    const v9, 0x7f020031

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cell"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "component_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "default_sort"

    aput-object v4, v2, v3

    const-string v3, "page=-1 and cell <> -1"

    const/4 v4, 0x0

    const-string v5, "cell"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 4

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " workspace item. info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> appWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static longCompare(JJ)I
    .locals 2

    const/4 v0, 0x0

    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            ")",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;"
        }
    .end annotation

    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    invoke-static {p0, p2, v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    const/high16 v4, 0x1020

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    :try_start_0
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v2, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    return-object v0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 6

    const/4 v5, 0x0

    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "container"

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "cellX"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "screen"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "update"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    return-void
.end method

.method static moveItemInDatabaseForUserFolder(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8

    move-object v1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "component_name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
            ")Z"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {p3, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {p2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p3, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return v2
.end method

.method static removePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 5

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v6

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "startApplicationsLoader"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 3

    const-string v0, "Launcher.LauncherModel"

    const-string v1, "startApplicationsLoaderLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created new mApplicationsAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new mApplications: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    const-string v2, "Applications Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopAndWaitForApplicationsLoader()Z
    .locals 5

    const-string v2, "Launcher.LauncherModel"

    const-string v3, "stopAndWaitForApplicationsLoader"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->stop()V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Launcher.LauncherModel"

    const-string v3, "InterruptedException while waiting for ApplicationsLoader to stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopAndWaitForDesktopItemsLoader()Z
    .locals 5

    const-string v2, "Launcher.LauncherModel"

    const-string v3, "stopAndWaitForApplicationsLoader"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->stop()V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Launcher.LauncherModel"

    const-string v3, "InterruptedException while waiting for DesktopItemsLoader to stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, p2, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Z

    move-result v4

    invoke-direct {p0, v2, v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addEnabledAndUpdateActivities(Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method private unbindAppDrawables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unbindAppWidgetHostViews(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unbindDrawables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    iget v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private unbindFolders(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unbindLocked()V
    .locals 3

    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindLocked. Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->abortLoaders()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForDesktopItemsLoader()Z

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindAppDrawables(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindDrawables(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindFolders(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindAppWidgetHostViews(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindSamsungAppWidgetViews(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindCachedIconDrawables()V

    return-void
.end method

.method private unbindSamsungAppWidgetViews(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 3

    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 13

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isClean()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_2
    const-string v3, "parent_id"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "page"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cell"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "title"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    const-string v1, "component_name"

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v0, v8

    goto/16 :goto_0

    :cond_4
    move-wide v1, v6

    goto :goto_4

    :cond_5
    move-wide v1, v6

    goto/16 :goto_2

    :cond_6
    move-wide v1, v6

    goto :goto_3

    :cond_7
    move-wide v1, v6

    goto/16 :goto_1
.end method

.method private static updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_3
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_4
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_4
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    :cond_2
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    const-string v1, "Launcher.LauncherModel"

    const-string v2, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    move v0, v6

    goto :goto_4

    :cond_5
    move v0, v6

    goto/16 :goto_2

    :cond_6
    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v6

    goto/16 :goto_1
.end method

.method private static updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    return-void
.end method

.method static updateAppsToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v9, v0

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;->canContinue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isClean()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const-string v1, "DebugDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something ugly has happened on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getComponentName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x0

    const-wide/16 v10, -0x1

    :try_start_1
    const-string v2, "menu_item"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    if-eqz v3, :cond_8

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_2
    const-string v3, "parent_id"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "page"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cell"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "title"

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    const-string v3, "DebugDb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update app info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "menu_item"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iput-wide v1, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    :goto_3
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    throw v1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v15, :cond_8

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    :goto_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v15, :cond_8

    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :cond_6
    const-string v1, "component_name"

    invoke-virtual {v14, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "menu_item"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const-string v1, "DebugDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert app info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :cond_7
    move-wide v1, v10

    goto :goto_5

    :cond_8
    move-wide v1, v10

    goto/16 :goto_2

    :cond_9
    move-wide v1, v10

    goto/16 :goto_4

    :cond_a
    move-wide v1, v10

    goto/16 :goto_1
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "update"

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->logWorkspaceChange(Ljava/lang/String;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    return-void
.end method

.method private static updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .locals 20

    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "title"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "intent"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "itemType"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v2, "intent"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v2, "itemType"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.SHORTCUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v2, 0x0

    invoke-static {v12, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v14

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method declared-synchronized addPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v6, "Launcher.LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPackage. mApplicationsAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-static {v5, v1, v3, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized addPackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v4

    const-string v6, "Launcher.LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPackageBackground. mApplicationsAdapter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-static {v5, v1, v3, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized addPackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageUi. mApplicationsAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized dropTopApplicationCache()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "dropTopApplicationCache"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method findAllOccupiedCells([[ZIII)V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method findFolderById(J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method public getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object v1
.end method

.method getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v0, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method declared-synchronized getApplicationsAdapter(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    :cond_0
    if-ne v1, p1, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getFolderById(Landroid/content/Context;J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=? and (itemType=? or itemType=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "container"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "screen"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "cellX"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "cellY"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    iput-wide p2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v2

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMenuManagerFolderList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignTo(Ljava/util/ArrayList;ZZZ)V

    :cond_0
    return-object v0
.end method

.method public getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    .locals 9

    new-instance v6, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    invoke-static {v6, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$202(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/util/List;)Ljava/util/List;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    monitor-enter p0

    :try_start_0
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_3
    invoke-static {v6, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$502(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Z)Z

    goto :goto_0
.end method

.method public getPkgModFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    return v0
.end method

.method public getWorkspaceFolderList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method initTopApp(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 9

    const/4 v1, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v6, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    const/4 v4, 0x0

    if-ge v4, v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-static {v7, v0, v5, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method isApplicationsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    return v0
.end method

.method isDesktopLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 6

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, p2, :cond_2

    :cond_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadApplications launcher mismatch. launcher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentLauncher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    :goto_0
    monitor-exit p0

    return v2

    :cond_2
    :try_start_1
    const-string v2, "Launcher.LauncherModel"

    const-string v4, "loadApplications"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v2, :cond_3

    if-nez p3, :cond_3

    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v2, p2, v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const-string v2, "Launcher.LauncherModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadApplications: created new mApplicationsAdapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with old mApplications: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()Z

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V
    .locals 8

    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v7, v0

    :cond_0
    if-eqz v7, :cond_1

    if-eq v7, p2, :cond_2

    :cond_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaduserItems launcher mismatch. launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentLauncher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "loadUserItems"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p4, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    :cond_3
    const-string v1, "Launcher.LauncherModel"

    const-string v2, "loadUserItems: items already loaded, return existing elements"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForDesktopItemsLoader()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->access$1500(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;)Z

    move-result v1

    or-int/2addr p4, v1

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;ZZZ)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    const-string v3, "Desktop Items Loader"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public registerPkgChangeListener(Landroid/app/Application;)V
    .locals 3

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method declared-synchronized removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v10, "Launcher.LauncherModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePackage. mApplicationsAdapter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized removePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    .locals 13

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    const-string v10, "Launcher.LauncherModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removePackageUi. mApplicationsAdapter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_2
    :try_start_2
    new-instance v9, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {v9, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    invoke-static {v9, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$202(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 1

    instance-of v0, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    :cond_0
    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindLocked()V

    :cond_1
    if-eqz p1, :cond_3

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setMenuManagerUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-void
.end method

.method declared-synchronized syncPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncPackage. mApplicationsAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized unbind(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_2

    :cond_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind launcher mismatch. launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentLauncher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindLocked()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCurrentLauncher:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized updatePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v8, "Launcher.LauncherModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addPackage. mApplicationsAdapter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v7, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v8, v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v7, v5, v1, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized updatePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0, v4, v3, v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized updatePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePackageUi. mApplicationsAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Z

    move-result v1

    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$200(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
