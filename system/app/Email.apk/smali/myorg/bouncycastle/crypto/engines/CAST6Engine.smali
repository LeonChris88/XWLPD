.class public final Lmyorg/bouncycastle/crypto/engines/CAST6Engine;
.super Lmyorg/bouncycastle/crypto/engines/CAST5Engine;
.source "CAST6Engine.java"


# instance fields
.field protected _Km:[I

.field protected _Kr:[I

.field protected _Tm:[I

.field protected _Tr:[I

.field private _workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xc0

    const/16 v1, 0x30

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/CAST5Engine;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    return-void
.end method


# virtual methods
.method protected final CAST_Decipher(IIII[I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v2, v0, 0xb

    mul-int/lit8 v1, v2, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    rsub-int/lit8 v2, v0, 0xb

    mul-int/lit8 v1, v2, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aput p1, p5, v2

    const/4 v2, 0x1

    aput p2, p5, v2

    const/4 v2, 0x2

    aput p3, p5, v2

    const/4 v2, 0x3

    aput p4, p5, v2

    return-void
.end method

.method protected final CAST_Encipher(IIII[I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p4, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, p2, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v2

    xor-int/2addr p1, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {p0, p3, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v2

    xor-int/2addr p2, v2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    aget v2, v2, v1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    aget v3, v3, v1

    invoke-virtual {p0, p4, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v2

    xor-int/2addr p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aput p1, p5, v2

    const/4 v2, 0x1

    aput p2, p5, v2

    const/4 v2, 0x2

    aput p3, p5, v2

    const/4 v2, 0x3

    aput p4, p5, v2

    return-void
.end method

.method protected decryptBlock([BI[BI)I
    .locals 7

    const/4 v0, 0x4

    new-array v5, v0, [I

    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v1

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Decipher(IIII[I)V

    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x1

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x4

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x8

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x3

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0xc

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/16 v0, 0x10

    return v0
.end method

.method protected encryptBlock([BI[BI)I
    .locals 7

    const/4 v0, 0x4

    new-array v5, v0, [I

    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v1

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v2

    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v3

    add-int/lit8 v0, p2, 0xc

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->CAST_Encipher(IIII[I)V

    const/4 v0, 0x0

    aget v0, v5, v0

    invoke-virtual {p0, v0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x1

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x4

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0x8

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/4 v0, 0x3

    aget v0, v5, v0

    add-int/lit8 v6, p4, 0xc

    invoke-virtual {p0, v0, p3, v6}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->Bits32ToBytes(I[BI)V

    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "CAST6"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method protected setKey([B)V
    .locals 17

    const v1, 0x5a827999

    const v3, 0x6ed9eba1

    const/16 v2, 0x13

    const/16 v4, 0x11

    const/4 v5, 0x0

    :goto_0
    const/16 v10, 0x18

    if-ge v5, v10, :cond_1

    const/4 v7, 0x0

    :goto_1
    const/16 v10, 0x8

    if-ge v7, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    mul-int/lit8 v11, v5, 0x8

    add-int/2addr v11, v7

    aput v1, v10, v11

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    mul-int/lit8 v11, v5, 0x8

    add-int/2addr v11, v7

    aput v2, v10, v11

    add-int v10, v2, v4

    and-int/lit8 v2, v10, 0x1f

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v10, 0x40

    new-array v9, v10, [B

    move-object/from16 v0, p1

    array-length v8, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_2
    const/16 v10, 0x8

    if-ge v5, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    mul-int/lit8 v11, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->BytesTo32bits([BI)I

    move-result v11

    aput v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_3
    const/16 v10, 0xc

    if-ge v5, v10, :cond_3

    mul-int/lit8 v10, v5, 0x2

    mul-int/lit8 v6, v10, 0x8

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x6

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v14, v14, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v15, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x5

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x4

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x3

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x3

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x2

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x4

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x4

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x1

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x5

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x5

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x6

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x6

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x7

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x7

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x7

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v6, v10, 0x8

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x6

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    aget v14, v14, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    aget v15, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x5

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x4

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x3

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x3

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x2

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x4

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x4

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x1

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x5

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x5

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F3(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x6

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x6

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F1(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v11, 0x7

    aget v12, v10, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tm:[I

    add-int/lit8 v15, v6, 0x7

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Tr:[I

    add-int/lit8 v16, v6, 0x7

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->F2(III)I

    move-result v13

    xor-int/2addr v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Kr:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    and-int/lit8 v12, v12, 0x1f

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    aput v12, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_Km:[I

    mul-int/lit8 v11, v5, 0x4

    add-int/lit8 v11, v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lmyorg/bouncycastle/crypto/engines/CAST6Engine;->_workingKey:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_3
    return-void
.end method
