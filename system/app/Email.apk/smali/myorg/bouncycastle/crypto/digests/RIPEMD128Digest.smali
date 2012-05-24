.class public Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD128Digest.java"


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    return-void
.end method

.method private F1(IIIIII)I
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F2(IIIIII)I
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F3(IIIIII)I
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F4(IIIIII)I
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, -0x70e44324

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF1(IIIIII)I
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF2(IIIIII)I
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6d703ef3

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF3(IIIIII)I
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5c4dd124

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF4(IIIIII)I
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x50a28be6

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private RL(II)I
    .locals 2

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private f1(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private f2(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private f3(III)I
    .locals 1

    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private f4(III)I
    .locals 2

    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->finish()V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RIPEMD128"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 26

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    move/from16 v22, v0

    move/from16 v2, v22

    move-object/from16 v0, p0

    iget v13, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    move v3, v13

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    move/from16 v23, v0

    move/from16 v4, v23

    move-object/from16 v0, p0

    iget v0, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    move/from16 v24, v0

    move/from16 v5, v24

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v6, v1, v6

    const/4 v7, 0x6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v6, v1, v6

    const/4 v7, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v6, v1, v6

    const/4 v7, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v6, v1, v6

    const/4 v7, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v11, v1, v6

    const/4 v12, 0x5

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v6, v1, v6

    const/16 v7, 0x9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v11, v1, v6

    const/4 v12, 0x5

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v6, v1, v6

    const/16 v7, 0x8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/4 v12, 0x5

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move/from16 v7, v22

    move v8, v13

    move/from16 v9, v23

    move/from16 v10, v24

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move/from16 v7, v24

    move v9, v13

    move/from16 v10, v23

    invoke-direct/range {v6 .. v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v14, v1, v6

    const/16 v15, 0x9

    move-object/from16 v9, p0

    move/from16 v10, v23

    move v12, v8

    invoke-direct/range {v9 .. v15}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v15, v1, v6

    const/16 v16, 0xf

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v17, v1, v6

    const/16 v18, 0x5

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v15, v1, v6

    const/16 v16, 0xe

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v17, v1, v6

    const/16 v18, 0x6

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v17, v1, v6

    const/16 v18, 0x7

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v15, v1, v6

    const/16 v16, 0x8

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v17, v1, v6

    const/16 v18, 0x7

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v15, v1, v6

    const/16 v16, 0xf

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v15, v1, v6

    const/16 v16, 0x6

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v20, v1, v6

    const/16 v21, 0x5

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v17, v1, v6

    const/16 v18, 0x5

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v15, v1, v6

    const/16 v16, 0x5

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v15, v1, v6

    const/16 v16, 0xe

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v15, v1, v6

    const/16 v16, 0x9

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v17, v1, v6

    const/16 v18, 0x9

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v15, v1, v6

    const/16 v16, 0x5

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v17, v1, v6

    const/16 v18, 0x8

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int/2addr v1, v4

    add-int/2addr v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/2addr v1, v5

    add-int/2addr v1, v8

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/2addr v1, v2

    add-int/2addr v1, v13

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    add-int/2addr v1, v3

    add-int/2addr v1, v14

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    move-object/from16 v0, p0

    iput v11, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 v25, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v1, v1

    move/from16 v0, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v1, v25

    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 4

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
