.class public Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;
.super Lmyorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD320Digest.java"


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private H9:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lmyorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v2, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    return-void
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

.method private f5(III)I
    .locals 1

    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p2

    xor-int/2addr v0, p1

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

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->finish()V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/lit8 v1, p2, 0x1c

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/lit8 v1, p2, 0x20

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/lit8 v1, p2, 0x24

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    const/16 v0, 0x28

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RIPEMD320"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected processBlock()V
    .locals 15

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iget v8, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iget v9, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x50a28be6

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    move v11, v0

    move v0, v1

    move v1, v11

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5a827999

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x5c4dd124

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    move v11, v2

    move v2, v3

    move v3, v11

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6ed9eba1

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x6d703ef3

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    move v11, v4

    move v4, v5

    move v5, v11

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, 0x7a6d76e9

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    move v11, v6

    move v6, v7

    move v7, v11

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v2, v4, v6}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v0, v12, v8

    const/16 v12, 0xa

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v8

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v8, v12, v6

    const/16 v12, 0xa

    invoke-direct {p0, v2, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v8, v0, v2}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v6

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v6, v12, v4

    const/16 v12, 0xa

    invoke-direct {p0, v0, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v6, v8, v0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v4

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v4, v12, v2

    const/16 v12, 0xa

    invoke-direct {p0, v8, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v4, v6, v8}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const v13, -0x56ac02b2

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v2, v12, v0

    const/16 v12, 0xa

    invoke-direct {p0, v6, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xa

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x9

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xc

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xe

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xd

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x6

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v5, v7}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v1

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v1, v12, v9

    const/16 v12, 0xa

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xf

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v9, v12, v7

    const/16 v12, 0xa

    invoke-direct {p0, v3, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v9, v1, v3}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v7

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xd

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v7, v12, v5

    const/16 v12, 0xa

    invoke-direct {p0, v1, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v9, v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v5, v12, v3

    const/16 v12, 0xa

    invoke-direct {p0, v9, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v5, v7, v9}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xb

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0xb

    invoke-direct {p0, v12, v13}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int v3, v12, v1

    const/16 v12, 0xa

    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    add-int/2addr v12, v0

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/2addr v12, v2

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/2addr v12, v4

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/2addr v12, v6

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/2addr v12, v9

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/2addr v12, v1

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/2addr v12, v3

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/2addr v12, v5

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/2addr v12, v7

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iget v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/2addr v12, v8

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    const/4 v12, 0x0

    iput v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/4 v10, 0x0

    :goto_0
    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v12, v12

    if-eq v10, v12, :cond_0

    iget-object v12, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v13, 0x0

    aput v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    const/16 v3, 0xe

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 4

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

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

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lmyorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v1, 0x67452301

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    const v1, -0x10325477

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    const v1, -0x67452302

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    const v1, 0x10325476

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    const v1, -0x3c2d1e10

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    const v1, 0x76543210

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    const v1, -0x1234568

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    const v1, -0x76543211

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    const v1, 0x1234567

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    const v1, 0x3c2d1e0f

    iput v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iput v2, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
