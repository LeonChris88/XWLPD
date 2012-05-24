.class Lgnu/inet/ftp/StreamOutputStream;
.super Lgnu/inet/ftp/DTPOutputStream;
.source "StreamOutputStream.java"


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lgnu/inet/ftp/DTPOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/ftp/DTPOutputStream;->transferComplete:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/StreamOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/ftp/DTPOutputStream;->transferComplete:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
