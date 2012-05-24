.class Lgnu/inet/ftp/BlockInputStream;
.super Lgnu/inet/ftp/DTPInputStream;
.source "BlockInputStream.java"


# instance fields
.field count:I

.field descriptor:I

.field max:I


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lgnu/inet/ftp/DTPInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-boolean v1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->readHeader()V

    :cond_1
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v2, p0, Lgnu/inet/ftp/DTPInputStream;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v2}, Lgnu/inet/ftp/DTP;->transferComplete()V

    :cond_3
    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v3, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    if-lt v2, v3, :cond_4

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v0, p0, Lgnu/inet/ftp/BlockInputStream;->descriptor:I

    const/16 v2, 0x40

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    :cond_4
    move v0, v1

    goto :goto_0
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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/BlockInputStream;->read([BII)I

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

    iget-boolean v1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->readHeader()V

    :cond_1
    iget v1, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v2, p0, Lgnu/inet/ftp/DTPInputStream;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v2}, Lgnu/inet/ftp/DTP;->transferComplete()V

    :cond_3
    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    add-int/2addr v2, v1

    iput v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v2, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v3, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    if-lt v2, v3, :cond_4

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    iget v0, p0, Lgnu/inet/ftp/BlockInputStream;->descriptor:I

    const/16 v2, 0x40

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lgnu/inet/ftp/BlockInputStream;->close()V

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method readHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->descriptor:I

    iget-object v0, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lgnu/inet/ftp/BlockInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->max:I

    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/ftp/BlockInputStream;->count:I

    return-void
.end method
