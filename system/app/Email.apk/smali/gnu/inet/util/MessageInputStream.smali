.class public Lgnu/inet/util/MessageInputStream;
.super Ljava/io/FilterInputStream;
.source "MessageInputStream.java"


# instance fields
.field protected buf1:I

.field protected buf2:I

.field protected eof:Z

.field protected markBuf1:I

.field protected markBuf2:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lgnu/inet/util/MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf1:I

    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf2:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lgnu/inet/util/MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x2e

    const/4 v4, 0x1

    const/16 v3, 0xa

    const/4 v0, -0x1

    iget-boolean v1, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    iput v2, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    :goto_1
    if-ne v1, v3, :cond_1

    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-ne v2, v0, :cond_3

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-ne v0, v5, :cond_1

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v0, v3, :cond_1

    iput-boolean v4, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    :cond_1
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    goto :goto_1

    :cond_3
    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    if-ne v2, v5, :cond_1

    iget v2, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v2, v0, :cond_4

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v0, v3, :cond_1

    iput-boolean v4, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    goto :goto_2

    :cond_4
    iget v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    if-ne v0, v3, :cond_1

    iput-boolean v4, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    goto :goto_2
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/MessageInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-boolean v1, p0, Lgnu/inet/util/MessageInputStream;->eof:Z

    if-eqz v1, :cond_1

    move p3, v0

    :cond_0
    :goto_0
    return p3

    :cond_1
    add-int v2, p2, p3

    move v1, p2

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lgnu/inet/util/MessageInputStream;->read()I

    move-result v3

    if-ne v3, v0, :cond_2

    sub-int p3, v1, p2

    goto :goto_0

    :cond_2
    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/util/MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf1:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf1:I

    iget v0, p0, Lgnu/inet/util/MessageInputStream;->markBuf2:I

    iput v0, p0, Lgnu/inet/util/MessageInputStream;->buf2:I

    return-void
.end method
