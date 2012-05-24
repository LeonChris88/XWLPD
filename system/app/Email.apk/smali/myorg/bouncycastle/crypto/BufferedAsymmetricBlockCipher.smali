.class public Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "BufferedAsymmetricBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field private final cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 v3, 0x0

    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-interface {v1, v2, v3, v4}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iput v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public processBytes([BII)V
    .locals 2

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "attempt to process message too long for cipher"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return-void
.end method
