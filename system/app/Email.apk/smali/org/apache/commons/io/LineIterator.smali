.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    return-void
.end method

.method public hasNext()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more lines"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
