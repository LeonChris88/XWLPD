.class public abstract Lcom/android/common/widget/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    }
.end annotation


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    iput v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    iput-object p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    return-void
.end method


# virtual methods
.method public addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v1, v2, 0x2

    new-array v0, v1, [Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    :cond_0
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    aput-object p1, v2, v3

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3

    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-eq v0, p2, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public clearPartitions()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_2
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/common/widget/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v5

    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    sub-int v3, p1, v4

    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    :cond_3
    move v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 9

    const/4 v8, -0x1

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v2, v7, :cond_1

    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v4, v7

    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    sub-int v3, p1, v4

    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget-boolean v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v7, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    if-ne v3, v8, :cond_2

    :cond_1
    :goto_1
    return-wide v5

    :cond_2
    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v7, v7, v2

    iget-object v0, v7, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_1

    :cond_3
    move v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    sub-int v2, p1, v3

    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewType(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .locals 1

    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    return v0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p4, :cond_0

    move-object v6, p4

    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    return-object v6

    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v6, v7, v0

    if-lt p1, v7, :cond_3

    if-ge p1, v6, :cond_3

    sub-int v3, p1, v7

    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_1

    :cond_3
    move v7, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_5
    return-object v8
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    return-void
.end method

.method public isEnabled(I)Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mSize:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v5

    if-lt p1, v3, :cond_2

    if-ge p1, v0, :cond_2

    sub-int v2, p1, v3

    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->isEnabled(II)Z

    move-result v4

    goto :goto_1

    :cond_2
    move v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isEnabled(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:[Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
