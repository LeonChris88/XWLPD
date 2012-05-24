.class public Lcom/android/email/provider/ContentCache;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/ContentCache$CacheType;
    }
.end annotation


# static fields
.field static mCacheType:Lcom/android/email/provider/ContentCache$CacheType;


# instance fields
.field mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

.field mCacheLru:Lcom/android/email/provider/ContentCacheLru;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/email/provider/ContentCache;->init()V

    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/email/provider/ContentCacheLru;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    const-string v1, "ContentCache() initialize error. no available cache!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static init()V
    .locals 4

    sget-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v2, Lcom/android/email/provider/ContentCache$CacheType;->NOT_INITIALIZED:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v1, "com.android.email.provider.ContentCacheLru"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v1, "ContentCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() done : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    sput-object v1, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    goto :goto_0
.end method

.method public static notCacheable(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->LRU:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/email/provider/ContentCacheLru;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    sget-object v1, Lcom/android/email/provider/ContentCache$CacheType;->HASH_MAP:Lcom/android/email/provider/ContentCache$CacheType;

    if-ne v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->notCacheable(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notCacheable() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCacheToken(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->getCacheToken(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCacheToken() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheHashMap;->getCachedCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedCursor() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;->invalidate(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lock(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->lock(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->lock(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    check-cast p4, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheLru;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheLru$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    check-cast p4, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheHashMap;->putCursor(Landroid/database/Cursor;Ljava/lang/String;[Ljava/lang/String;Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putCursor() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordQueryTime(Landroid/database/Cursor;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheLru;->recordQueryTime(Landroid/database/Cursor;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/provider/ContentCacheHashMap;->recordQueryTime(Landroid/database/Cursor;J)V

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordQueryTime() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru;->unlock(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap;->unlock(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheLru:Lcom/android/email/provider/ContentCacheLru;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheLru;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/provider/ContentCache;->mCacheHashMap:Lcom/android/email/provider/ContentCacheHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/provider/ContentCacheHashMap;->unlock(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    const-string v0, "ContentCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock() error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/provider/ContentCache;->mCacheType:Lcom/android/email/provider/ContentCache$CacheType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
