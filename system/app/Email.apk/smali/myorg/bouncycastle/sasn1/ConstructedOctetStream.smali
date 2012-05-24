.class Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private final _aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_first:Z

    new-instance v0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

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

    const/4 v2, -0x1

    iget-boolean v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_first:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->readObject()Lmyorg/bouncycastle/sasn1/Asn1Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/sasn1/Asn1OctetString;

    if-nez v1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_first:Z

    invoke-interface {v1}, Lmyorg/bouncycastle/sasn1/Asn1OctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_2
    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_aIn:Lmyorg/bouncycastle/sasn1/Asn1InputStream;

    invoke-virtual {v3}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->readObject()Lmyorg/bouncycastle/sasn1/Asn1Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/sasn1/Asn1OctetString;

    if-nez v1, :cond_4

    const/4 v3, 0x0

    iput-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lmyorg/bouncycastle/sasn1/Asn1OctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    iget-object v2, p0, Lmyorg/bouncycastle/sasn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method
