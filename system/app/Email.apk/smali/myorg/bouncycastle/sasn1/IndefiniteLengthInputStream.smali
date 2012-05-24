.class Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;
.super Lmyorg/bouncycastle/sasn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/sasn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean v1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    iput-boolean v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofOn00:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    iget v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method checkForEof()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_0

    iget v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p0}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->checkForEof()V

    iget-boolean v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/sasn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofReached:Z

    goto :goto_0

    :cond_1
    iget v1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    iget v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b1:I

    iput v0, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_b2:I

    goto :goto_0
.end method

.method setEofOn00(Z)V
    .locals 0

    iput-boolean p1, p0, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->_eofOn00:Z

    return-void
.end method
