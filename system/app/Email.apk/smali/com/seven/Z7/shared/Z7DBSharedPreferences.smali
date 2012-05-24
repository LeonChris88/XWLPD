.class public Lcom/seven/Z7/shared/Z7DBSharedPreferences;
.super Ljava/lang/Object;
.source "Z7DBSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;
    }
.end annotation


# static fields
.field private static dbSharedPreferencesInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/seven/Z7/shared/Z7DBSharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:Ljava/lang/String;

.field private contentUri:Landroid/net/Uri;

.field private context:Landroid/content/Context;

.field private listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

.field private preferenceObserver:Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->dbSharedPreferencesInstances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->category:Ljava/lang/String;

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->context:Landroid/content/Context;

    sget-object v0, Lcom/seven/Z7/provider/Z7Content$Z7DBPrefs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->contentUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static synthetic access$000(Lcom/seven/Z7/shared/Z7DBSharedPreferences;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getAllFromDB()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/seven/Z7/shared/Z7DBSharedPreferences;)Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;
    .locals 1

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/seven/Z7/shared/Z7DBSharedPreferences;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->notifyListeners(Ljava/util/List;)V

    return-void
.end method

.method private containsInDB(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    :try_start_0
    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "value"

    aput-object v5, v2, v3

    const-string v3, "key=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v7

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getAllFromDB()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    const/4 v9, 0x0

    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->parseValue(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static declared-synchronized getDBPrefencesInstance(Ljava/lang/String;)Lcom/seven/Z7/shared/Z7DBSharedPreferences;
    .locals 3

    const-class v2, Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->dbSharedPreferencesInstances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    invoke-direct {v0, p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->dbSharedPreferencesInstances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getFromDB(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v0

    :try_start_0
    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "value"

    aput-object v5, v2, v3

    const-string v3, "key=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->parseValue(Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v7, p3

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getUISharedPreferences()Lcom/seven/Z7/shared/Z7DBSharedPreferences;
    .locals 1

    const-string v0, "UIPrefs"

    invoke-static {v0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getDBPrefencesInstance(Ljava/lang/String;)Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyListeners(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, p0, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    :cond_2
    iget-object v4, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method private onFirstListenerAdded()V
    .locals 2

    new-instance v0, Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    invoke-virtual {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    invoke-direct {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->registerContentObserver()V

    return-void
.end method

.method private onLastListenerRemoved()V
    .locals 1

    invoke-direct {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->unregisterContentObserver()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    return-void
.end method

.method private static parseValue(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private registerContentObserver()V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Email;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceObserver:Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;

    invoke-direct {v1, p0, v0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;-><init>(Lcom/seven/Z7/shared/Z7DBSharedPreferences;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceObserver:Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;

    :cond_0
    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->contentUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceObserver:Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceObserver:Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    invoke-virtual {v0, p1}, Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;->contains(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->containsInDB(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->edit()Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 3

    new-instance v0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;-><init>(Ljava/lang/String;Lcom/seven/Z7/shared/Z7DBSharedPreferences;Landroid/content/Context;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    invoke-virtual {v0, p1}, Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    invoke-virtual {v0, p1}, Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getFromDB(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->preferenceCache:Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    invoke-virtual {v0}, Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;->getAll()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getAllFromDB()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->get(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->get(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->get(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3

    const/4 v1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->get(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, p2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->get(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Can\'t register null listener"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->onFirstListenerAdded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->onLastListenerRemoved()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->listenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
