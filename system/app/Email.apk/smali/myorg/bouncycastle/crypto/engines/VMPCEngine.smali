.class public Lmyorg/bouncycastle/crypto/engines/VMPCEngine;
.super Ljava/lang/Object;
.source "VMPCEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field protected P:[B

.field protected n:B

.field protected s:B

.field protected workingIV:[B

.field protected workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iput-byte v1, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "VMPC"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC init parameters must include an IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p2

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC init parameters must include a key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length v2, v2

    const/16 v3, 0x300

    if-le v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v2, v3}, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void
.end method

.method protected initKey([B[B)V
    .locals 9

    const/16 v8, 0x300

    const/16 v5, 0x100

    const/4 v7, 0x0

    iput-byte v7, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    new-array v3, v5, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p1

    rem-int v5, v1, v5

    aget-byte v5, p1, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p2

    rem-int v5, v1, v5

    aget-byte v5, p2, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput-byte v7, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 7

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_0

    new-instance v3, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "input buffer too short"

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int v3, p5, p3

    array-length v4, p4

    if-le v3, v4, :cond_1

    new-instance v3, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "output buffer too short"

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v3, v4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    aget-byte v1, v3, v4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v1, v3, v4

    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int v3, v0, p5

    add-int v4, v0, p2

    aget-byte v4, p1, v4

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    return-void
.end method
