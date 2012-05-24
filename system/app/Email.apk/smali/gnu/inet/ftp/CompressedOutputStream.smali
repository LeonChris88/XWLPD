.class Lgnu/inet/ftp/CompressedOutputStream;
.super Lgnu/inet/ftp/DTPOutputStream;
.source "CompressedOutputStream.java"


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lgnu/inet/ftp/DTPOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x3

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :array_0
    .array-data 0x1
        0x40t
        0x0t
        0x0t
    .end array-data
.end method

.method compress([BII)[B
    .locals 11

    new-array v1, p3, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, p2

    move v8, v0

    :goto_0
    if-ge v7, p3, :cond_7

    aget-byte v9, p1, v7

    if-le v7, p2, :cond_5

    if-ne v9, v8, :cond_5

    if-lez v5, :cond_1

    add-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v2

    array-length v3, v1

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v1, p3}, Lgnu/inet/ftp/CompressedOutputStream;->realloc([BI)[B

    move-result-object v1

    :cond_0
    sub-int v0, v7, v5

    add-int/lit8 v4, v0, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/inet/ftp/CompressedOutputStream;->flush_raw([BI[BII)I

    move-result v2

    const/4 v5, 0x0

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_1
    const/16 v3, 0x7f

    if-ne v1, v3, :cond_c

    add-int/lit8 v3, v2, 0x2

    array-length v4, v0

    if-le v3, v4, :cond_2

    invoke-virtual {p0, v0, p3}, Lgnu/inet/ftp/CompressedOutputStream;->realloc([BI)[B

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0, v2, v1, v8}, Lgnu/inet/ftp/CompressedOutputStream;->flush_compressed([BIIB)I

    move-result v2

    const/4 v1, 0x1

    move v6, v1

    move-object v1, v0

    :goto_2
    const/16 v0, 0x7f

    if-ne v5, v0, :cond_4

    add-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v2

    array-length v3, v1

    if-le v0, v3, :cond_3

    invoke-virtual {p0, v1, p3}, Lgnu/inet/ftp/CompressedOutputStream;->realloc([BI)[B

    move-result-object v1

    :cond_3
    sub-int v4, v7, v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/inet/ftp/CompressedOutputStream;->flush_raw([BI[BII)I

    move-result v2

    const/4 v5, 0x0

    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v9

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-le v6, v0, :cond_d

    add-int/lit8 v0, v2, 0x2

    array-length v3, v1

    if-le v0, v3, :cond_6

    invoke-virtual {p0, v1, p3}, Lgnu/inet/ftp/CompressedOutputStream;->realloc([BI)[B

    move-result-object v1

    :cond_6
    invoke-virtual {p0, v1, v2, v6, v8}, Lgnu/inet/ftp/CompressedOutputStream;->flush_compressed([BIIB)I

    move-result v2

    const/4 v0, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    if-le v6, v0, :cond_9

    add-int/lit8 v0, v2, 0x2

    array-length v3, v1

    if-le v0, v3, :cond_8

    invoke-virtual {p0, v1, p3}, Lgnu/inet/ftp/CompressedOutputStream;->realloc([BI)[B

    move-result-object v1

    :cond_8
    invoke-virtual {p0, v1, v2, v6, v8}, Lgnu/inet/ftp/CompressedOutputStream;->flush_compressed([BIIB)I

    move-result v2

    :cond_9
    if-lez v5, :cond_b

    add-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v2

    array-length v3, v1

    if-le v0, v3, :cond_a

    invoke-virtual {p0, v1, p3}, Lgnu/inet/ftp/CompressedOutputStream;->realloc([BI)[B

    move-result-object v1

    :cond_a
    sub-int v4, p3, v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/inet/ftp/CompressedOutputStream;->flush_raw([BI[BII)I

    move-result v2

    :cond_b
    add-int/lit8 v0, v2, 0x3

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    move v6, v1

    move-object v1, v0

    goto :goto_2

    :cond_d
    move v0, v6

    goto :goto_3
.end method

.method flush_compressed([BIIB)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    or-int/lit16 v1, p3, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    aput-byte p4, p1, v0

    return v1
.end method

.method flush_raw([BI[BII)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p5

    aput-byte v1, p1, p2

    invoke-static {p3, p4, p1, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p5

    return v0
.end method

.method realloc([BI)[B
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    add-int/2addr v0, p2

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lgnu/inet/ftp/DTPOutputStream;->transferComplete:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v0, v4, [B

    const/16 v1, -0x80

    aput-byte v1, v0, v3

    aput-byte v3, v0, v2

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/CompressedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lgnu/inet/ftp/DTPOutputStream;->transferComplete:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/inet/ftp/CompressedOutputStream;->compress([BII)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, -0x80

    aput-byte v2, v0, v4

    const/4 v2, 0x1

    and-int/lit16 v3, v1, 0xff

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    const v3, 0xff00

    and-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
