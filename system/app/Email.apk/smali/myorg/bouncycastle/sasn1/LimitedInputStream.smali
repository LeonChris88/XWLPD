.class abstract Lmyorg/bouncycastle/sasn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field protected final _in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/sasn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method protected setParentEofDetect(Z)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    check-cast v0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_0
    return-void
.end method

.method toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/LimitedInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method
