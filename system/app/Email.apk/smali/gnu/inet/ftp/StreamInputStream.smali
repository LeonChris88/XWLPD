.class Lgnu/inet/ftp/StreamInputStream;
.super Lgnu/inet/ftp/DTPInputStream;
.source "StreamInputStream.java"


# direct methods
.method constructor <init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lgnu/inet/ftp/DTPInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
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
    iget-object v1, p0, Lgnu/inet/ftp/StreamInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lgnu/inet/ftp/StreamInputStream;->close()V

    :cond_1
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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/ftp/StreamInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
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
    iget-object v1, p0, Lgnu/inet/ftp/StreamInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lgnu/inet/ftp/StreamInputStream;->close()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method
