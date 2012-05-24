.class public Lmyorg/bouncycastle/crypto/io/SignerOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SignerOutputStream.java"


# instance fields
.field protected signer:Lmyorg/bouncycastle/crypto/Signer;


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/io/SignerOutputStream;->signer:Lmyorg/bouncycastle/crypto/Signer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lmyorg/bouncycastle/crypto/Signer;->update(B)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/io/SignerOutputStream;->signer:Lmyorg/bouncycastle/crypto/Signer;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
