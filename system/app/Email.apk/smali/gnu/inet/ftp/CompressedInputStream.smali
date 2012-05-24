.class Lgnu/inet/ftp/CompressedInputStream;
.super Lgnu/inet/ftp/DTPInputStream;
.source "CompressedInputStream.java"


# instance fields
.field count:I

.field descriptor:I

.field max:I

.field n:I

.field rep:I

.field state:I


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lgnu/inet/ftp/DTPInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->max:I

    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    iput v1, p0, Lgnu/inet/ftp/CompressedInputStream;->state:I

    iput v1, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

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

    const/4 v1, -0x1

    iget-boolean v0, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->readHeader()V

    :cond_2
    iget v0, p0, Lgnu/inet/ftp/CompressedInputStream;->max:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->close()V

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

    if-lez v0, :cond_5

    iget v0, p0, Lgnu/inet/ftp/CompressedInputStream;->state:I

    const/16 v2, 0x80

    if-eq v0, v2, :cond_4

    iget v0, p0, Lgnu/inet/ftp/CompressedInputStream;->state:I

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_5

    :cond_4
    iget v0, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

    iget v0, p0, Lgnu/inet/ftp/CompressedInputStream;->rep:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lgnu/inet/ftp/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->close()V

    :cond_6
    iget v2, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    iget v2, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    iget v3, p0, Lgnu/inet/ftp/CompressedInputStream;->max:I

    if-lt v2, v3, :cond_7

    iput v1, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    iget v2, p0, Lgnu/inet/ftp/CompressedInputStream;->descriptor:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->close()V

    :cond_7
    if-eq v0, v1, :cond_0

    :cond_8
    iget v2, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

    if-nez v2, :cond_9

    and-int/lit16 v2, v0, 0xc0

    iput v2, p0, Lgnu/inet/ftp/CompressedInputStream;->state:I

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

    iget-object v0, p0, Lgnu/inet/ftp/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    goto :goto_0

    :cond_9
    iget v1, p0, Lgnu/inet/ftp/CompressedInputStream;->state:I

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/inet/ftp/CompressedInputStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->rep:I

    :sswitch_1
    iget v1, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/inet/ftp/CompressedInputStream;->n:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x80 -> :sswitch_0
        0xc0 -> :sswitch_0
    .end sparse-switch
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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/CompressedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-boolean v1, p0, Lgnu/inet/ftp/DTPInputStream;->transferComplete:Z

    if-eqz v1, :cond_1

    move p3, v0

    :cond_0
    :goto_0
    return p3

    :cond_1
    iget v1, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->readHeader()V

    :cond_2
    iget v1, p0, Lgnu/inet/ftp/CompressedInputStream;->max:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->close()V

    move p3, v0

    goto :goto_0

    :cond_3
    move v1, p2

    :goto_1
    if-ge v1, p3, :cond_0

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->read()I

    move-result v2

    if-ne v2, v0, :cond_4

    invoke-virtual {p0}, Lgnu/inet/ftp/CompressedInputStream;->close()V

    move p3, v1

    goto :goto_0

    :cond_4
    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method readHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/ftp/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->descriptor:I

    iget-object v0, p0, Lgnu/inet/ftp/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lgnu/inet/ftp/CompressedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->max:I

    const/4 v0, 0x0

    iput v0, p0, Lgnu/inet/ftp/CompressedInputStream;->count:I

    return-void
.end method
