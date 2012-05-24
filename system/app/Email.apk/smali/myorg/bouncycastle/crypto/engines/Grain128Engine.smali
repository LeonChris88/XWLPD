.class public Lmyorg/bouncycastle/crypto/engines/Grain128Engine;
.super Ljava/lang/Object;
.source "Grain128Engine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private index:I

.field private initialised:Z

.field private lfsr:[I

.field private nfsr:[I

.field private out:[B

.field private output:I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    return-void
.end method

.method private getKeyStream()B
    .locals 3

    iget v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->oneRound()V

    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private getOutput()I
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x1e

    or-int v3, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x14

    or-int v1, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x11

    or-int v2, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x1c

    or-int v4, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x13

    or-int v5, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x17

    or-int v7, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x7

    or-int v8, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x1

    or-int v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x18

    or-int v15, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x13

    or-int v10, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v11, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x16

    or-int v12, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x4

    or-int v13, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x11

    or-int v14, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x3

    or-int v16, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    ushr-int/lit8 v18, v18, 0x1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x1

    or-int v17, v18, v19

    and-int v18, v1, v15

    and-int v19, v10, v11

    xor-int v18, v18, v19

    and-int v19, v9, v12

    xor-int v18, v18, v19

    and-int v19, v13, v14

    xor-int v18, v18, v19

    and-int v19, v1, v9

    and-int v19, v19, v17

    xor-int v18, v18, v19

    xor-int v18, v18, v16

    xor-int v18, v18, v3

    xor-int v18, v18, v2

    xor-int v18, v18, v4

    xor-int v18, v18, v5

    xor-int v18, v18, v6

    xor-int v18, v18, v7

    xor-int v18, v18, v8

    return v18
.end method

.method private getOutputLFSR()I
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v0, v6, v7

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v6, v6, v7

    ushr-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v7, v7, v10

    shl-int/lit8 v7, v7, 0x19

    or-int v2, v6, v7

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v6, v6, v10

    ushr-int/lit8 v6, v6, 0x6

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x1a

    or-int v1, v6, v7

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v6, v6, v8

    ushr-int/lit8 v6, v6, 0x6

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v7, v7, v9

    shl-int/lit8 v7, v7, 0x1a

    or-int v3, v6, v7

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v6, v6, v8

    ushr-int/lit8 v6, v6, 0x11

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v7, v7, v9

    shl-int/lit8 v7, v7, 0xf

    or-int v4, v6, v7

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v5, v6, v9

    xor-int v6, v0, v2

    xor-int/2addr v6, v1

    xor-int/2addr v6, v3

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    return v6
.end method

.method private getOutputNFSR()I
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v1, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x1d

    or-int v8, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x15

    or-int v2, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x13

    or-int v3, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0xf

    or-int v4, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0xe

    or-int v5, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x6

    or-int v6, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x5

    or-int v7, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x18

    or-int v9, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x10

    or-int v10, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x8

    or-int v11, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x5

    or-int v12, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x3

    or-int v13, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x1f

    or-int v14, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x1d

    or-int v15, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x1c

    or-int v16, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0xc

    or-int v17, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    ushr-int/lit8 v20, v20, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    shl-int/lit8 v21, v21, 0x5

    or-int v18, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v19, v20, v21

    xor-int v20, v1, v6

    xor-int v20, v20, v11

    xor-int v20, v20, v18

    xor-int v20, v20, v19

    and-int v21, v8, v15

    xor-int v20, v20, v21

    and-int v21, v2, v3

    xor-int v20, v20, v21

    and-int v21, v4, v5

    xor-int v20, v20, v21

    and-int v21, v7, v12

    xor-int v20, v20, v21

    and-int v21, v9, v10

    xor-int v20, v20, v21

    and-int v21, v13, v14

    xor-int v20, v20, v21

    and-int v21, v16, v17

    xor-int v20, v20, v21

    return v20
.end method

.method private initGrain()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getOutput()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputNFSR()I

    move-result v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputLFSR()I

    move-result v2

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    return-void
.end method

.method private oneRound()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getOutput()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    const/4 v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    const/4 v1, 0x2

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    const/4 v1, 0x3

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->output:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputNFSR()I

    move-result v1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getOutputLFSR()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    return-void
.end method

.method private setKey([B[B)V
    .locals 8

    const/high16 v7, 0xff

    const v6, 0xff00

    const/4 v3, -0x1

    const/16 v2, 0xc

    aput-byte v3, p2, v2

    const/16 v2, 0xd

    aput-byte v3, p2, v2

    const/16 v2, 0xe

    aput-byte v3, p2, v2

    const/16 v2, 0xf

    aput-byte v3, p2, v2

    iput-object p1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    iput-object p2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0x2

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v7

    or-int/2addr v3, v4

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    add-int/lit8 v5, v1, 0x2

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    and-int/2addr v4, v7

    or-int/2addr v3, v4

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shift([II)[I
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    aget v1, p1, v2

    aput v1, p1, v0

    aget v0, p1, v3

    aput v0, p1, v2

    aget v0, p1, v4

    aput v0, p1, v3

    aput p2, p1, v4

    return-object p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Grain-128"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v6, 0x0

    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Grain-128 Init parameters must include an IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Grain-128  requires exactly 12 bytes of IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    instance-of v3, v3, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Grain-128 Init parameters must include a key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    new-array v3, v5, [I

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->lfsr:[I

    new-array v3, v5, [I

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->nfsr:[I

    new-array v3, v5, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->out:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    array-length v4, v0

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->setKey([B[B)V

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->initGrain()V

    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->initialised:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getAlgorithmName()Ljava/lang/String;

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
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->getKeyStream()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->index:I

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingKey:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->setKey([B[B)V

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;->initGrain()V

    return-void
.end method
