.class Lcom/android/email/provider/ContentCacheLru$TokenList;
.super Ljava/util/ArrayList;
.source "ContentCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheLru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/email/provider/ContentCacheLru$CacheToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLogTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenList-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheLru$TokenList;->mLogTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheLru$CacheToken;
    .locals 2

    new-instance v0, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    invoke-direct {v0, p1}, Lcom/android/email/provider/ContentCacheLru$CacheToken;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    :cond_0
    return-object v0
.end method

.method invalidate()V
    .locals 3

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    invoke-virtual {v1}, Lcom/android/email/provider/ContentCacheLru$CacheToken;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$TokenList;->clear()V

    return-void
.end method

.method invalidateTokens(Ljava/lang/String;)I
    .locals 5

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    invoke-virtual {v3}, Lcom/android/email/provider/ContentCacheLru$CacheToken;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/email/provider/ContentCacheLru$CacheToken;->invalidate()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    invoke-virtual {p0, v3}, Lcom/android/email/provider/ContentCacheLru$TokenList;->remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z

    goto :goto_1

    :cond_3
    return v0
.end method

.method remove(Lcom/android/email/provider/ContentCacheLru$CacheToken;)Z
    .locals 2

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    :cond_0
    return v0
.end method
