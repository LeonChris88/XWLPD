.class public Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;
.super Ljava/lang/Object;
.source "CFBBlockCipherMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 3

    const/16 v0, 0x8

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;IILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;IILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    rem-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    new-instance v0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-direct {v0, p1, p2}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iput-object p4, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-interface {v1, v2, v3}, Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getMacBlock([B)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v1
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v0, v1, v3, v2, v3}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 7

    const/4 v6, 0x0

    if-gez p3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    sub-int v1, v0, v3

    if-le p3, v1, :cond_1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v3, v4, v6, v5, v6}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v6, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->mac:[B

    invoke-virtual {v3, p1, p2, v4, v6}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/CFBBlockCipherMac;->bufOff:I

    return-void
.end method
