.class Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;
.super Lmyorg/bouncycastle/sasn1/LimitedInputStream;
.source "DefiniteLengthInputStream.java"


# instance fields
.field private _length:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/sasn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->_length:I

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

    iget v0, p0, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->_length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->_length:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/sasn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    const/4 v0, -0x1

    goto :goto_0
.end method
