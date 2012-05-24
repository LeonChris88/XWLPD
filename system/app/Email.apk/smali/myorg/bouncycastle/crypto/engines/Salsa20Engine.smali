.class public Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final sigma:[B

.field private static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private workingIV:[B

.field private workingKey:[B

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lmyorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lmyorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void
.end method

.method private byteToIntLittle([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private intToByteLittle(I[BI)[B
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

    return-object p2
.end method

.method private limitExceeded(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_0

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    return-void
.end method

.method private rotl(II)I
    .locals 2

    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private salsa20WordToByte([I[B)V
    .locals 13

    const/16 v12, 0x12

    const/4 v11, 0x0

    const/16 v10, 0xd

    const/16 v9, 0x9

    const/4 v8, 0x7

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    array-length v3, p1

    invoke-static {p1, v11, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0x8

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xc

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v11

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v9

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v9

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v10

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v4, v4, v9

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v10

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v10

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x5

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xe

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x6

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xa

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v8

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xb

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v8

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xf

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v11

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v11

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v11

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x6

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v8

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v8

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x4

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v8

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v3, 0x5

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xb

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v9

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0x8

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v9

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xb

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v9

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xa

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v9

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xc

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v3, v2, v10

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xf

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v4

    xor-int/2addr v3, v4

    aput v3, v2, v10

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xe

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v5, v5, v10

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v7, 0xc

    aget v6, v6, v7

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v10}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v3, 0xf

    aget v4, v2, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v6, 0xe

    aget v5, v5, v6

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v12}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v2, v2, v0

    aget v3, p1, v0

    add-int/2addr v2, v3

    invoke-direct {p0, v2, p2, v1}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->intToByteLittle(I[BI)[B

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    :goto_2
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    aget v2, v2, v0

    invoke-direct {p0, v2, p2, v1}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->intToByteLittle(I[BI)[B

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setKey([B[B)V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0xc

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v3, v6}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v10

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v4, v7}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v4, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v3, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v7

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    sget-object v0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const/16 v1, 0x10

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xb

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-direct {p0, v4, v1}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v4, v1, 0x4

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v9

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xd

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0x8

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xe

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0xc

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-direct {p0, v0, v6}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v3

    aput v3, v2, v6

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-direct {p0, v0, v7}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-direct {p0, v0, v8}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-direct {p0, v0, v9}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x6

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v4, v6}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x7

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v4, v7}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->byteToIntLittle([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0x9

    aput v6, v3, v4

    aput v6, v2, v8

    iput-boolean v10, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void

    :cond_0
    sget-object v0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Salsa20"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 Init parameters must include an IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 requires exactly 8 bytes of IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    instance-of v3, v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 Init parameters must include a key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 5

    const/16 v4, 0x8

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-direct {p0, p3}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lmyorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_5

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->salsa20WordToByte([I[B)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_4
    add-int v1, v0, p5

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    return-void
.end method
