.class public final Lcom/android/email/provider/ContentCacheHashMap;
.super Ljava/util/LinkedHashMap;
.source "ContentCacheHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCacheHashMap$Statistics;,
        Lcom/android/email/provider/ContentCacheHashMap$CacheCounter;,
        Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;,
        Lcom/android/email/provider/ContentCacheHashMap$CacheToken;,
        Lcom/android/email/provider/ContentCacheHashMap$TokenList;,
        Lcom/android/email/provider/ContentCacheHashMap$CounterMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static sActiveCursors:Lcom/android/email/provider/ContentCacheHashMap$CounterMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheHashMap$CounterMap",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContentCaches:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/ContentCacheHashMap;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotCacheable:I = 0x0

.field private static final sNotCacheableMap:Lcom/android/email/provider/ContentCacheHashMap$CounterMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheHashMap$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mBaseProjection:[Ljava/lang/String;

.field private final mLockMap:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/provider/ContentCacheHashMap$CounterMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogTag:Ljava/lang/String;

.field private final mMaxSize:I

.field private final mName:Ljava/lang/String;

.field private final mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

.field mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/email/provider/ContentCacheHashMap;->sNotCacheable:I

    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-direct {v0}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCacheHashMap;->sNotCacheableMap:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/provider/ContentCacheHashMap;->sContentCaches:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mLockMap:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    iput-object p1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/provider/ContentCacheHashMap;->mMaxSize:I

    iput-object p2, p0, Lcom/android/email/provider/ContentCacheHashMap;->mBaseProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCache-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mLogTag:Ljava/lang/String;

    sget-object v0, Lcom/android/email/provider/ContentCacheHashMap;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-direct {v0, p3}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;-><init>(I)V

    sput-object v0, Lcom/android/email/provider/ContentCacheHashMap;->sActiveCursors:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-direct {v0, p0}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;-><init>(Lcom/android/email/provider/ContentCacheHashMap;)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/provider/ContentCacheHashMap;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$208(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I

    new-instance v1, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheHashMap;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$308(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCacheHashMap;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;
    .locals 15

    invoke-virtual/range {p0 .. p1}, Lcom/android/email/provider/ContentCacheHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

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

    iget-object v14, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$408(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I

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

    iget-object v14, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$208(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I

    goto :goto_0

    :cond_8
    iget-object v14, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v14}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$308(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I

    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static invalidateAllCachesForTest()V
    .locals 3

    sget-object v2, Lcom/android/email/provider/ContentCacheHashMap;->sContentCaches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheHashMap;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/android/email/provider/ContentCacheHashMap;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    :cond_0
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap;->mBaseProjection:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/email/provider/ContentCacheHashMap;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/MatrixCursor;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    :cond_1
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->moveToFirst()Z

    invoke-virtual {p0, p1, v1}, Lcom/android/email/provider/ContentCacheHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v2, Lcom/android/email/provider/ContentCacheHashMap;->sActiveCursors:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-virtual {v2, v0}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap;->mLockMap:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->subtract(Ljava/lang/Object;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->add(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mLockMap:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;->invalidate()V
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
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mBaseProjection:[Ljava/lang/String;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->getCachedCursorImpl(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/provider/ContentCacheHashMap;->getMatrixCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
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
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/provider/ContentCacheHashMap;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
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
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$608(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/email/provider/ContentCacheHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    sget-object v3, Lcom/android/email/provider/ContentCacheHashMap;->sActiveCursors:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-virtual {v3, v0}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap;->clear()V

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v3}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized lock(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mLockMap:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v1, p1}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->invalidateTokens(Ljava/lang/String;)I

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

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheHashMap;->putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized putCursorImpl(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Landroid/database/Cursor;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$108(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->remove(Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :cond_1
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mBaseProjection:[Ljava/lang/String;

    if-ne p3, v1, :cond_4

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_2

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/email/provider/ContentCacheHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lcom/android/email/provider/ContentCacheHashMap;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V

    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/android/email/provider/ContentCacheHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;-><init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheHashMap;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->remove(Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Z

    move-object p1, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v1, p4}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->remove(Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Z
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
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheHashMap;->mTokenList:Lcom/android/email/provider/ContentCacheHashMap$TokenList;

    invoke-virtual {v2, p4}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->remove(Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method recordQueryTime(Landroid/database/Cursor;J)V
    .locals 2

    instance-of v0, p1, Lcom/android/email/provider/ContentCacheHashMap$CachedCursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$814(Lcom/android/email/provider/ContentCacheHashMap$Statistics;J)J

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$908(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v0, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$1014(Lcom/android/email/provider/ContentCacheHashMap$Statistics;J)J

    iget-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap;->mStats:Lcom/android/email/provider/ContentCacheHashMap$Statistics;

    invoke-static {v0}, Lcom/android/email/provider/ContentCacheHashMap$Statistics;->access$1108(Lcom/android/email/provider/ContentCacheHashMap$Statistics;)J

    goto :goto_0
.end method

.method public declared-synchronized removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/android/email/provider/ContentCacheHashMap;->mMaxSize:I

    if-le v1, v2, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    sget-object v1, Lcom/android/email/provider/ContentCacheHashMap;->sActiveCursors:Lcom/android/email/provider/ContentCacheHashMap$CounterMap;

    invoke-virtual {v1, v0}, Lcom/android/email/provider/ContentCacheHashMap$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unlock(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/ContentCacheHashMap;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
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
    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/provider/ContentCacheHashMap;->unlockImpl(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
