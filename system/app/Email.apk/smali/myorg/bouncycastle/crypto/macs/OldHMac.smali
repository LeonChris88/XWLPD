.class public Lmyorg/bouncycastle/crypto/macs/OldHMac;
.super Ljava/lang/Object;
.source "OldHMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private outputPad:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 2

    const/16 v1, 0x40

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    new-array v1, v2, [B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/OldHMac;->reset()V

    return v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    check-cast p1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0x40

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    invoke-interface {v2, v3, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
