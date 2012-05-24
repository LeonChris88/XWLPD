.class Lorg/apache/commons/httpclient/WireLogOutputStream;
.super Ljava/io/FilterOutputStream;
.source "WireLogOutputStream.java"


# instance fields
.field private out:Ljava/io/OutputStream;

.field private wire:Lorg/apache/commons/httpclient/Wire;


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/Wire;->output(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/Wire;->output([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogOutputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/Wire;->output([BII)V

    return-void
.end method
