.class Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;
.super Ljava/io/OutputStream;
.source "BerOctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBerOctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field private _off:I

.field final synthetic this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_off:I

    if-eqz v1, :cond_0

    iget v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_off:I

    new-array v0, v1, [B

    iget-object v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_buf:[B

    iget v2, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_off:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;

    iget-object v1, v1, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;

    invoke-virtual {v1}, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;->writeBerEnd()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_buf:[B

    iget v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_off:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_off:I

    iget-object v1, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->this$0:Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator;

    iget-object v0, v0, Lmyorg/bouncycastle/sasn1/Asn1Generator;->_out:Ljava/io/OutputStream;

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_buf:[B

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/sasn1/BerOctetStringGenerator$BufferedBerOctetStream;->_off:I

    :cond_0
    return-void
.end method
