.class Lgnu/inet/ftp/BlockOutputStream;
.super Lgnu/inet/ftp/DTPOutputStream;
.source "BlockOutputStream.java"


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

    invoke-super {p0}, Lgnu/inet/ftp/DTPOutputStream;->close()V

    return-void

    :array_0
    .array-data 0x1
        0x40t
        0x0t
        0x0t
    .end array-data
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/BlockOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lgnu/inet/ftp/DTPOutputStream;->transferComplete:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x3

    new-array v0, v0, [B

    const/16 v1, -0x80

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    and-int/lit16 v2, p3, 0xff

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xff00

    and-int/2addr v2, p3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
