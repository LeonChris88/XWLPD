.class public Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;
.super Ljava/lang/Object;
.source "CamelliaLightEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final SBOX1:[B

.field private static final SIGMA:[I


# instance fields
.field private _keyis128:Z

.field private initialized:Z

.field private ke:[I

.field private kw:[I

.field private state:[I

.field private subkey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7ft 0x66t 0x9et 0xa0t
        0x8bt 0x90t 0xcct 0x3bt
        0x58t 0xe8t 0x7at 0xb6t
        0xb2t 0x73t 0xaat 0x4ct
        0x2ft 0x37t 0xeft 0xc6t
        0xbet 0x82t 0x4ft 0xe9t
        0xa5t 0x53t 0xfft 0x54t
        0x1ct 0x6ft 0xd3t 0xf1t
        0xfat 0x27t 0xe5t 0x10t
        0x1dt 0x2dt 0x68t 0xdet
        0xc2t 0x88t 0x56t 0xb0t
        0xfdt 0xc1t 0xe6t 0xb3t
    .end array-data

    :array_1
    .array-data 0x1
        0x70t
        0x82t
        0x2ct
        0xect
        0xb3t
        0x27t
        0xc0t
        0xe5t
        0xe4t
        0x85t
        0x57t
        0x35t
        0xeat
        0xct
        0xaet
        0x41t
        0x23t
        0xeft
        0x6bt
        0x93t
        0x45t
        0x19t
        0xa5t
        0x21t
        0xedt
        0xet
        0x4ft
        0x4et
        0x1dt
        0x65t
        0x92t
        0xbdt
        0x86t
        0xb8t
        0xaft
        0x8ft
        0x7ct
        0xebt
        0x1ft
        0xcet
        0x3et
        0x30t
        0xdct
        0x5ft
        0x5et
        0xc5t
        0xbt
        0x1at
        0xa6t
        0xe1t
        0x39t
        0xcat
        0xd5t
        0x47t
        0x5dt
        0x3dt
        0xd9t
        0x1t
        0x5at
        0xd6t
        0x51t
        0x56t
        0x6ct
        0x4dt
        0x8bt
        0xdt
        0x9at
        0x66t
        0xfbt
        0xcct
        0xb0t
        0x2dt
        0x74t
        0x12t
        0x2bt
        0x20t
        0xf0t
        0xb1t
        0x84t
        0x99t
        0xdft
        0x4ct
        0xcbt
        0xc2t
        0x34t
        0x7et
        0x76t
        0x5t
        0x6dt
        0xb7t
        0xa9t
        0x31t
        0xd1t
        0x17t
        0x4t
        0xd7t
        0x14t
        0x58t
        0x3at
        0x61t
        0xdet
        0x1bt
        0x11t
        0x1ct
        0x32t
        0xft
        0x9ct
        0x16t
        0x53t
        0x18t
        0xf2t
        0x22t
        0xfet
        0x44t
        0xcft
        0xb2t
        0xc3t
        0xb5t
        0x7at
        0x91t
        0x24t
        0x8t
        0xe8t
        0xa8t
        0x60t
        0xfct
        0x69t
        0x50t
        0xaat
        0xd0t
        0xa0t
        0x7dt
        0xa1t
        0x89t
        0x62t
        0x97t
        0x54t
        0x5bt
        0x1et
        0x95t
        0xe0t
        0xfft
        0x64t
        0xd2t
        0x10t
        0xc4t
        0x0t
        0x48t
        0xa3t
        0xf7t
        0x75t
        0xdbt
        0x8at
        0x3t
        0xe6t
        0xdat
        0x9t
        0x3ft
        0xddt
        0x94t
        0x87t
        0x5ct
        0x83t
        0x2t
        0xcdt
        0x4at
        0x90t
        0x33t
        0x73t
        0x67t
        0xf6t
        0xf3t
        0x9dt
        0x7ft
        0xbft
        0xe2t
        0x52t
        0x9bt
        0xd8t
        0x26t
        0xc8t
        0x37t
        0xc6t
        0x3bt
        0x81t
        0x96t
        0x6ft
        0x4bt
        0x13t
        0xbet
        0x63t
        0x2et
        0xe9t
        0x79t
        0xa7t
        0x8ct
        0x9ft
        0x6et
        0xbct
        0x8et
        0x29t
        0xf5t
        0xf9t
        0xb6t
        0x2ft
        0xfdt
        0xb4t
        0x59t
        0x78t
        0x98t
        0x6t
        0x6at
        0xe7t
        0x46t
        0x71t
        0xbat
        0xd4t
        0x25t
        0xabt
        0x42t
        0x88t
        0xa2t
        0x8dt
        0xfat
        0x72t
        0x7t
        0xb9t
        0x55t
        0xf8t
        0xeet
        0xact
        0xat
        0x36t
        0x49t
        0x2at
        0x68t
        0x3ct
        0x38t
        0xf1t
        0xa4t
        0x40t
        0x28t
        0xd3t
        0x7bt
        0xbbt
        0xc9t
        0x43t
        0xc1t
        0x15t
        0xe3t
        0xadt
        0xf4t
        0x77t
        0xc7t
        0x80t
        0x9et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x60

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    return-void
.end method

.method private bytes2int([BI)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v1, 0x8

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private camelliaF2([I[II)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    aget v4, p1, v7

    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    xor-int v0, v4, v5

    and-int/lit16 v4, v0, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v2

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aget v4, p1, v8

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    xor-int v1, v4, v5

    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    ushr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    invoke-static {v3, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v3, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v4

    xor-int v3, v4, v2

    invoke-static {v2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->rightRotate(II)I

    move-result v4

    xor-int v2, v4, v3

    aget v4, p1, v9

    const/16 v5, 0x10

    invoke-static {v3, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v5

    xor-int/2addr v5, v2

    xor-int/2addr v4, v5

    aput v4, p1, v9

    aget v4, p1, v10

    invoke-static {v2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, p1, v10

    aget v4, p1, v9

    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    xor-int v0, v4, v5

    and-int/lit16 v4, v0, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v2

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    ushr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aget v4, p1, v10

    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    xor-int v1, v4, v5

    sget-object v4, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    ushr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox4(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox3(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    ushr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->sbox2(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    invoke-static {v3, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v3, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v4

    xor-int v3, v4, v2

    invoke-static {v2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->rightRotate(II)I

    move-result v4

    xor-int v2, v4, v3

    aget v4, p1, v7

    const/16 v5, 0x10

    invoke-static {v3, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v5

    xor-int/2addr v5, v2

    xor-int/2addr v4, v5

    aput v4, p1, v7

    aget v4, p1, v8

    invoke-static {v2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v5

    xor-int/2addr v4, v5

    aput v4, p1, v8

    return-void
.end method

.method private camelliaFLs([I[II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    aget v0, p1, v3

    aget v1, p1, v4

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v4

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    aget v2, p1, v3

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v5

    add-int/lit8 v1, p3, 0x3

    aget v1, p2, v1

    aget v2, p1, v6

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v6

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    aget v2, p1, v5

    and-int/2addr v1, v2

    invoke-static {v1, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->leftRotate(II)I

    move-result v1

    xor-int/2addr v0, v1

    aput v0, p1, v6

    return-void
.end method

.method private static decroldq(I[II[II)V
    .locals 4

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private static decroldqo32(I[II[II)V
    .locals 4

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private int2bytes(I[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p3

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    ushr-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private lRot8(BI)B
    .locals 3

    shl-int v0, p1, p2

    and-int/lit16 v1, p1, 0xff

    rsub-int/lit8 v2, p2, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static leftRotate(II)I
    .locals 2

    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private processBlock128([BI[BI)I
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v7

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v7

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v8

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v5

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v5

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v6

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v7

    invoke-direct {p0, v1, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    const/16 v1, 0x10

    return v1
.end method

.method private processBlock192or256([BI[BI)I
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0xc

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x10

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x14

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x18

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x1c

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x20

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaFLs([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x24

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x28

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v3, 0x2c

    invoke-direct {p0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v7

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v7

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v8

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v5

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v5

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v2, v1, v6

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v7

    invoke-direct {p0, v1, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v8

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->int2bytes(I[BI)V

    const/16 v1, 0x10

    return v1
.end method

.method private static rightRotate(II)I
    .locals 2

    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static roldq(I[II[II)V
    .locals 4

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    shl-int/2addr v1, p0

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x20

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private static roldqo32(I[II[II)V
    .locals 4

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x0

    aget v1, p1, v1

    add-int/lit8 v2, p0, -0x20

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    rsub-int/lit8 v3, p0, 0x40

    ushr-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, p4, 0x3

    aget v1, p3, v1

    aput v1, p1, v0

    return-void
.end method

.method private sbox2(I)I
    .locals 2

    sget-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private sbox3(I)I
    .locals 2

    sget-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private sbox4(I)I
    .locals 3

    sget-object v0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SBOX1:[B

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->lRot8(BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private setKey(Z[B)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/16 v5, 0x8

    new-array v1, v5, [I

    new-array v2, v9, [I

    new-array v3, v9, [I

    new-array v4, v9, [I

    array-length v5, p2

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "key sizes are only 16/24/32 bytes."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    iput-boolean v10, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    invoke-direct {p0, p2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v8

    invoke-direct {p0, p2, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v10

    const/16 v5, 0x8

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v11

    const/16 v5, 0xc

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v12

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x7

    aput v8, v1, v7

    aput v8, v1, v6

    aput v8, v1, v5

    aput v8, v1, v9

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_0

    aget v5, v1, v0

    add-int/lit8 v6, v0, 0x4

    aget v6, v1, v6

    xor-int/2addr v5, v6

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, p2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v8

    invoke-direct {p0, p2, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v10

    const/16 v5, 0x8

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v11

    const/16 v5, 0xc

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v12

    const/16 v5, 0x10

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v9

    const/4 v5, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x6

    aget v6, v1, v9

    xor-int/lit8 v6, v6, -0x1

    aput v6, v1, v5

    const/4 v5, 0x7

    const/4 v6, 0x5

    aget v6, v1, v6

    xor-int/lit8 v6, v6, -0x1

    aput v6, v1, v5

    iput-boolean v8, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p2, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v8

    invoke-direct {p0, p2, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v10

    const/16 v5, 0x8

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v11

    const/16 v5, 0xc

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v12

    const/16 v5, 0x10

    invoke-direct {p0, p2, v5}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v5

    aput v5, v1, v9

    const/4 v5, 0x5

    const/16 v6, 0x14

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x6

    const/16 v6, 0x18

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v1, v5

    const/4 v5, 0x7

    const/16 v6, 0x1c

    invoke-direct {p0, p2, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->bytes2int([BI)I

    move-result v6

    aput v6, v1, v5

    iput-boolean v8, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    goto/16 :goto_0

    :cond_0
    sget-object v5, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    invoke-direct {p0, v2, v5, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_1

    aget v5, v2, v0

    aget v6, v1, v0

    xor-int/2addr v5, v6

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    sget-object v5, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    invoke-direct {p0, v2, v5, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    iget-boolean v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    if-eqz v5, :cond_3

    if-eqz p1, :cond_2

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v8

    aput v6, v5, v8

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v10

    aput v6, v5, v10

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v11

    aput v6, v5, v11

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v12

    aput v6, v5, v12

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v5, v1, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0xc

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0xf

    invoke-static {v5, v1, v8, v4, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x12

    aget v7, v4, v11

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x13

    aget v7, v4, v12

    aput v7, v5, v6

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v5, v1, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x18

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x20

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v2, v8

    aput v6, v5, v8

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v2, v10

    aput v6, v5, v10

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v2, v11

    aput v6, v5, v11

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v2, v12

    aput v6, v5, v12

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x8

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v5, v2, v8, v6, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0xf

    invoke-static {v5, v2, v8, v4, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x10

    aget v7, v4, v8

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x11

    aget v7, v4, v10

    aput v7, v5, v6

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x14

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x22

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x1c

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v5, v2, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    :goto_3
    return-void

    :cond_2
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v8

    aput v6, v5, v9

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v6, 0x5

    aget v7, v1, v10

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v6, 0x6

    aget v7, v1, v11

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v6, 0x7

    aget v7, v1, v12

    aput v7, v5, v6

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x1c

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x14

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0xf

    invoke-static {v5, v1, v8, v4, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x10

    aget v7, v4, v8

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x11

    aget v7, v4, v10

    aput v7, v5, v6

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v5, v1, v8, v6, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x8

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v5, v1, v8, v6, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x22

    aget v7, v2, v8

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x23

    aget v7, v2, v10

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x20

    aget v7, v2, v11

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x21

    aget v7, v2, v12

    aput v7, v5, v6

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x18

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v5, v2, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0xf

    invoke-static {v5, v2, v8, v4, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x12

    aget v7, v4, v11

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x13

    aget v7, v4, v12

    aput v7, v5, v6

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0xc

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x22

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v5, v2, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v5, v2, v8, v6, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_4

    aget v5, v2, v0

    add-int/lit8 v6, v0, 0x4

    aget v6, v1, v6

    xor-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    sget-object v5, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->SIGMA:[I

    const/16 v6, 0x8

    invoke-direct {p0, v3, v5, v6}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->camelliaF2([I[II)V

    if-eqz p1, :cond_5

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v8

    aput v6, v5, v8

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v10

    aput v6, v5, v10

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v11

    aput v6, v5, v11

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v12

    aput v6, v5, v12

    const/16 v5, 0x2d

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x10

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v5, v1, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x20

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x22

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x2c

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v5, v1, v9, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v5, v1, v9, v6, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x18

    invoke-static {v5, v1, v9, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x22

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x24

    invoke-static {v5, v1, v9, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x8

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x14

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v6, 0x8

    aget v7, v2, v10

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v6, 0x9

    aget v7, v2, v11

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v6, 0xa

    aget v7, v2, v12

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v6, 0xb

    aget v7, v2, v8

    aput v7, v5, v6

    const/16 v5, 0x31

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x28

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v3, v8

    aput v6, v5, v8

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v3, v10

    aput v6, v5, v10

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v3, v11

    aput v6, v5, v11

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    aget v6, v3, v12

    aput v6, v5, v12

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0xc

    invoke-static {v5, v3, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x1c

    invoke-static {v5, v3, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldq(I[II[II)V

    const/16 v5, 0x33

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v5, v3, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    goto/16 :goto_3

    :cond_5
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    aget v6, v1, v8

    aput v6, v5, v9

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v6, 0x5

    aget v7, v1, v10

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v6, 0x6

    aget v7, v1, v11

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    const/4 v6, 0x7

    aget v7, v1, v12

    aput v7, v5, v6

    const/16 v5, 0x2d

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x1c

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    invoke-static {v5, v1, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x11

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0xc

    invoke-static {v5, v1, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x22

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v5, v1, v8, v6, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x28

    invoke-static {v5, v1, v9, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    const/16 v7, 0x8

    invoke-static {v5, v1, v9, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x14

    invoke-static {v5, v1, v9, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x22

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x8

    invoke-static {v5, v1, v9, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    const/16 v5, 0xf

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x24

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x18

    invoke-static {v5, v2, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v6, v2, v10

    aput v6, v5, v11

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v6, v2, v11

    aput v6, v5, v12

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v6, v2, v12

    aput v6, v5, v8

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->ke:[I

    aget v6, v2, v8

    aput v6, v5, v10

    const/16 v5, 0x31

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    invoke-static {v5, v2, v8, v6, v9}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldqo32(I[II[II)V

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x2e

    aget v7, v3, v8

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x2f

    aget v7, v3, v10

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x2c

    aget v7, v3, v11

    aput v7, v5, v6

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v6, 0x2d

    aget v7, v3, v12

    aput v7, v5, v6

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x20

    invoke-static {v5, v3, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x1e

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->subkey:[I

    const/16 v7, 0x10

    invoke-static {v5, v3, v8, v6, v7}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->decroldq(I[II[II)V

    const/16 v5, 0x33

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->kw:[I

    invoke-static {v5, v3, v8, v6, v8}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->roldqo32(I[II[II)V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Camellia"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only simple KeyParameter expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->setKey(Z[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->initialized:Z

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camellia is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->_keyis128:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->processBlock128([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/engines/CamelliaLightEngine;->processBlock192or256([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
