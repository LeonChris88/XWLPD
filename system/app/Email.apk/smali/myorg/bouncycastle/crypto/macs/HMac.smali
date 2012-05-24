.class public Lmyorg/bouncycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source "HMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# static fields
.field private static blockLengths:Ljava/util/Hashtable;


# instance fields
.field private blockLength:I

.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private outputPad:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x80

    const/16 v4, 0x40

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "GOST3411"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD2"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD4"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD5"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "Tiger"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-static {p1}, Lmyorg/bouncycastle/crypto/macs/HMac;->getByteLength(Lmyorg/bouncycastle/crypto/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;I)V

    return-void
.end method

.method private constructor <init>(Lmyorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digestSize:I

    iput p2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLength:I

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->outputPad:[B

    return-void
.end method

.method private static getByteLength(Lmyorg/bouncycastle/crypto/Digest;)I
    .locals 4

    instance-of v1, p0, Lmyorg/bouncycastle/crypto/ExtendedDigest;

    if-eqz v1, :cond_0

    check-cast p0, Lmyorg/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lmyorg/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lmyorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown digest passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lmyorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digestSize:I

    new-array v1, v2, [B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->outputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->outputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/HMac;->reset()V

    return v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digestSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    check-cast p1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    array-length v2, v1

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->blockLength:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-interface {v2, v3, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digestSize:I

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->outputPad:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->outputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->outputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->outputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/HMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
