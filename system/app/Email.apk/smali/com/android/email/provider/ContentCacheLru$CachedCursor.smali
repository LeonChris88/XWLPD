.class public final Lcom/android/email/provider/ContentCacheLru$CachedCursor;
.super Landroid/database/CursorWrapper;
.source "ContentCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheLru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedCursor"
.end annotation


# instance fields
.field private isClosed:Z

.field private final mCache:Lcom/android/email/provider/ContentCacheLru;

.field private mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mId:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheLru;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    iput v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->isClosed:Z

    iput-object p1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCursor:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheLru;

    iput-object p3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mId:Ljava/lang/String;

    sget-object v0, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->add(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheLru;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v3}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->subtract(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheLru;

    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru;->access$100(Lcom/android/email/provider/ContentCacheLru;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCursor:Landroid/database/Cursor;

    if-eq v1, v3, :cond_0

    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->isClosed:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    :cond_0
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    return v0
.end method

.method public final isAfterLast()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->isClosed:Z

    return v0
.end method

.method public final isLast()Z
    .locals 2

    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final move(I)Z
    .locals 1

    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
