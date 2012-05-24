.class public Lcom/seven/Z7/shared/Z7DBPrefsEditor;
.super Ljava/lang/Object;
.source "Z7DBPrefsEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field private dbCleared:Z

.field private mCategory:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mParent:Lcom/seven/Z7/shared/Z7DBSharedPreferences;

.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/seven/Z7/shared/Z7DBSharedPreferences;Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->dbCleared:Z

    iput-object p1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mCategory:Ljava/lang/String;

    iput-object p2, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mParent:Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    iput-object p3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/seven/Z7/provider/Z7Content$Z7DBPrefs;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mContentUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->ops:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    return-void
.end method

.method private appendContentOperations(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->dbCleared:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mContentUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "key=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mContentUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private put(Ljava/lang/String;ILjava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->put(Ljava/lang/String;ILjava/lang/String;I)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method private put(Ljava/lang/String;ILjava/lang/String;I)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 3

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "category"

    iget-object v2, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public apply()V
    .locals 0

    invoke-virtual {p0}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->commit()Z

    return-void
.end method

.method public bridge synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->clear()Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 3

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->dbCleared:Z

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mContentUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public commit()Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mParent:Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    invoke-virtual {v3}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->appendContentOperations(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "com.seven.provider.email"

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :goto_0
    iget-object v3, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->ops:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "Z7DBPrefsEditor"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_1
    move-exception v2

    :try_start_5
    const-string v3, "Z7DBPrefsEditor"

    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3

    :cond_0
    const-string v3, "Z7DBPrefsEditor"

    const-string v5, "Couldn\'t get contentProviderClient for com.seven.provider.email authority"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->putBoolean(Ljava/lang/String;Z)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 2

    const/4 v0, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->put(Ljava/lang/String;ILjava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->putFloat(Ljava/lang/String;F)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 2

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->put(Ljava/lang/String;ILjava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->putInt(Ljava/lang/String;I)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->put(Ljava/lang/String;ILjava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->putLong(Ljava/lang/String;J)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 2

    const/4 v0, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->put(Ljava/lang/String;ILjava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->put(Ljava/lang/String;ILjava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->remove(Ljava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/seven/Z7/shared/Z7DBPrefsEditor;
    .locals 5

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->mContentUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBPrefsEditor;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
