.class public Lgnu/inet/nntp/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Lgnu/inet/nntp/PendingData;
.implements Ljava/util/Iterator;


# instance fields
.field connection:Lgnu/inet/nntp/NNTPConnection;

.field current:Ljava/lang/String;

.field doneRead:Z


# direct methods
.method constructor <init>(Lgnu/inet/nntp/NNTPConnection;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    iput-object p1, p0, Lgnu/inet/nntp/LineIterator;->connection:Lgnu/inet/nntp/NNTPConnection;

    return-void
.end method


# virtual methods
.method doRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPConnection;->read()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->doRead()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->nextLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->doRead()V

    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/nntp/LineIterator;->doneRead:Z

    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    return-object v0
.end method

.method public readToEOF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lgnu/inet/nntp/LineIterator;->doRead()V

    iget-object v0, p0, Lgnu/inet/nntp/LineIterator;->current:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
