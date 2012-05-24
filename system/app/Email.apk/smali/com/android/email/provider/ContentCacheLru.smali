.class public final Lcom/android/email/provider/ContentCacheLru;
.super Ljava/lang/Object;
.source "ContentCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCacheLru$Statistics;,
        Lcom/android/email/provider/ContentCacheLru$CacheCounter;,
        Lcom/android/email/provider/ContentCacheLru$CachedCursor;,
        Lcom/android/email/provider/ContentCacheLru$CacheToken;,
        Lcom/android/email/provider/ContentCacheLru$TokenList;,
        Lcom/android/email/provider/ContentCacheLru$CounterMap;
    }
.end annotation


# static fields
.field static sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheLru$CounterMap",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContentCaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/ContentCacheLru;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotCacheable:I

.field private static final sNotCacheableMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheLru$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseProjection:[Ljava/lang/String;

.field private final mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheLru$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogTag:Ljava/lang/String;

.field private final mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

.field mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/email/provider/ContentCacheLru;->sNotCacheable:I

    new-instance v0, Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-direct {v0}, Lcom/android/email/provider/ContentCacheLru$CounterMap;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCacheLru;->sNotCacheableMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCacheLru;->sContentCaches:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/email/provider/ContentCacheLru$CounterMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    iput-object p1, p0, Lcom/android/email/provider/ContentCacheLru;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/email/provider/ContentCacheLru$1;

    invoke-direct {v0, p0, p3}, Lcom/android/email/provider/ContentCacheLru$1;-><init>(Lcom/android/email/provider/ContentCacheLru;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    iput-object p2, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCache-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLogTag:Ljava/lang/String;

    sget-object v0, Lcom/android/email/provider/ContentCacheLru;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/email/provider/ContentCacheLru$TokenList;

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCacheLru$TokenList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    new-instance v0, Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-direct {v0, p3}, Lcom/android/email/provider/ContentCacheLru$CounterMap;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    new-instance v0, Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-direct {v0, p0}, Lcom/android/email/provider/ContentCacheLru$Statistics;-><init>(Lcom/android/email/provider/ContentCacheLru;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/provider/ContentCacheLru;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/provider/ContentCacheLru;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private get(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method private getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CachedCursor;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$308(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    new-instance v1, Lcom/android/email/provider/ContentCacheLru$CachedCursor;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheLru;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$408(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCacheLru;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;
    .locals 15

    invoke-direct/range {p0 .. p1}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v9, Landroid/database/MatrixCursor;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-nez v14, :cond_0

    :goto_0
    return-object v9

    :cond_0
    move-object/from16 v0, p2

    array-length v14, v0

    new-array v10, v14, [Ljava/lang/Object;

    if-eqz p3, :cond_1

    new-instance v13, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    move-object/from16 p3, v13

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v1, p2

    array-length v8, v1

    const/4 v7, 0x0

    move v6, v5

    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v3, v1, v7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    iget-object v14, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$508(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v14, v11, Ljava/lang/Boolean;

    if-eqz v14, :cond_4

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v11, v14, :cond_3

    const-string v12, "1"

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v6, 0x1

    aput-object v12, v10, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v5

    goto :goto_1

    :cond_3
    const-string v12, "0"

    goto :goto_2

    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_5
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v9, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    iget-object v14, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$308(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    goto :goto_0

    :cond_8
    iget-object v14, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$408(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static invalidateAllCachesForTest()V
    .locals 3

    sget-object v2, Lcom/android/email/provider/ContentCacheLru;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheLru;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/android/email/provider/ContentCacheLru;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    :cond_0
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/email/provider/ContentCacheLru;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    :cond_1
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v2, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v2, v0}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->subtract(Ljava/lang/Object;)I

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$TokenList;->add(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheLru$CacheToken;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CachedCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/provider/ContentCacheLru;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$708(Lcom/android/email/provider/ContentCacheLru$Statistics;)I

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheLru$TokenList;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mLockMap:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheLru$TokenList;->invalidateTokens(Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheLru;->putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Lcom/android/email/provider/ContentCacheLru$CacheToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$208(Lcom/android/email/provider/ContentCacheLru$Statistics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :cond_1
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mBaseProjection:[Ljava/lang/String;

    if-ne p3, v1, :cond_4

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_2

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/email/provider/ContentCacheLru;->get(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/android/email/provider/ContentCacheLru;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/email/provider/ContentCacheLru$CachedCursor;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheLru;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z

    move-object p1, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru;->mTokenList:Lcom/android/email/provider/ContentCacheLru$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method recordQueryTime(Landroid/database/Cursor;J)V
    .locals 2

    instance-of v0, p1, Lcom/android/email/provider/ContentCacheLru$CachedCursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$914(Lcom/android/email/provider/ContentCacheLru$Statistics;J)J

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$1008(Lcom/android/email/provider/ContentCacheLru$Statistics;)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$1114(Lcom/android/email/provider/ContentCacheLru$Statistics;J)J

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mStats:Lcom/android/email/provider/ContentCacheLru$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheLru$Statistics;->access$1208(Lcom/android/email/provider/ContentCacheLru$Statistics;)J

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/ContentCacheLru;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCacheLru;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
