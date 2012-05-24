.class public final Lgnu/inet/nntp/PostStream;
.super Ljava/io/FilterOutputStream;
.source "PostStream.java"


# instance fields
.field connection:Lgnu/inet/nntp/NNTPConnection;

.field isTakethis:Z

.field last:B


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xd

    iget-byte v0, p0, Lgnu/inet/nntp/PostStream;->last:B

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lgnu/inet/nntp/PostStream;->write(I)V

    :cond_0
    iget-boolean v0, p0, Lgnu/inet/nntp/PostStream;->isTakethis:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/inet/nntp/PostStream;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPConnection;->takethisComplete()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgnu/inet/nntp/PostStream;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPConnection;->postComplete()V

    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    int-to-byte v0, p1

    iput-byte v0, p0, Lgnu/inet/nntp/PostStream;->last:B

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/nntp/PostStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    if-lez p3, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lgnu/inet/nntp/PostStream;->last:B

    :cond_0
    return-void
.end method
