.class public Lmyorg/bouncycastle/crypto/tls/TlsOuputStream;
.super Ljava/io/OutputStream;
.source "TlsOuputStream.java"


# instance fields
.field private buf:[B

.field private handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsOuputStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsOuputStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsOuputStream;->buf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsOuputStream;->buf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lmyorg/bouncycastle/crypto/tls/TlsOuputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsOuputStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->writeData([BII)V

    return-void
.end method
