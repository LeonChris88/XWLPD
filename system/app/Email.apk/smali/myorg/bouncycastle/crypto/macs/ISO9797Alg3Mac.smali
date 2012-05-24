.class public Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;
.super Ljava/lang/Object;
.source "ISO9797Alg3Mac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private lastKey2:Lmyorg/bouncycastle/crypto/params/KeyParameter;

.field private lastKey3:Lmyorg/bouncycastle/crypto/params/KeyParameter;

.field private mac:[B

.field private macSize:I

.field private padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;ILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;ILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lmyorg/bouncycastle/crypto/engines/DESEngine;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher must be instance of DESEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iput-object p3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;ILmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    if-nez v2, :cond_0

    :goto_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ge v2, v0, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte v5, v2, v3

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v5, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-interface {v2, v3, v4}, Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1, v5, v2}, Lmyorg/bouncycastle/crypto/engines/DESEngine;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v1, v2, v5, v3, v5}, Lmyorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/DESEngine;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v1, v2, v5, v3, v5}, Lmyorg/bouncycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-static {v2, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v2
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/16 v5, 0x8

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    instance-of v3, p1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "params must be an instance of KeyParameter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, p1

    check-cast v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    array-length v3, v1

    if-ne v3, v7, :cond_1

    new-instance v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v1, v6, v5}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1, v5, v5}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    array-length v3, v1

    const/16 v4, 0x18

    if-ne v3, v4, :cond_2

    new-instance v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v1, v6, v5}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1, v5, v5}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    new-instance v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1, v7, v5}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key must be either 112 or 168 bit long"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

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
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int v1, v0, v3

    if-le p3, v1, :cond_1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v6, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_0
    if-le p3, v0, :cond_1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v3, p1, p2, v4, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    return-void
.end method
