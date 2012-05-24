.class public Lmyorg/bouncycastle/crypto/engines/AESLightEngine;
.super Ljava/lang/Object;
.source "AESLightEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final S:[B

.field private static final Si:[B

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    return-void

    :array_0
    .array-data 0x1
        0x63t
        0x7ct
        0x77t
        0x7bt
        0xf2t
        0x6bt
        0x6ft
        0xc5t
        0x30t
        0x1t
        0x67t
        0x2bt
        0xfet
        0xd7t
        0xabt
        0x76t
        0xcat
        0x82t
        0xc9t
        0x7dt
        0xfat
        0x59t
        0x47t
        0xf0t
        0xadt
        0xd4t
        0xa2t
        0xaft
        0x9ct
        0xa4t
        0x72t
        0xc0t
        0xb7t
        0xfdt
        0x93t
        0x26t
        0x36t
        0x3ft
        0xf7t
        0xcct
        0x34t
        0xa5t
        0xe5t
        0xf1t
        0x71t
        0xd8t
        0x31t
        0x15t
        0x4t
        0xc7t
        0x23t
        0xc3t
        0x18t
        0x96t
        0x5t
        0x9at
        0x7t
        0x12t
        0x80t
        0xe2t
        0xebt
        0x27t
        0xb2t
        0x75t
        0x9t
        0x83t
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        0xa0t
        0x52t
        0x3bt
        0xd6t
        0xb3t
        0x29t
        0xe3t
        0x2ft
        0x84t
        0x53t
        0xd1t
        0x0t
        0xedt
        0x20t
        0xfct
        0xb1t
        0x5bt
        0x6at
        0xcbt
        0xbet
        0x39t
        0x4at
        0x4ct
        0x58t
        0xcft
        0xd0t
        0xeft
        0xaat
        0xfbt
        0x43t
        0x4dt
        0x33t
        0x85t
        0x45t
        0xf9t
        0x2t
        0x7ft
        0x50t
        0x3ct
        0x9ft
        0xa8t
        0x51t
        0xa3t
        0x40t
        0x8ft
        0x92t
        0x9dt
        0x38t
        0xf5t
        0xbct
        0xb6t
        0xdat
        0x21t
        0x10t
        0xfft
        0xf3t
        0xd2t
        0xcdt
        0xct
        0x13t
        0xect
        0x5ft
        0x97t
        0x44t
        0x17t
        0xc4t
        0xa7t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        0x81t
        0x4ft
        0xdct
        0x22t
        0x2at
        0x90t
        0x88t
        0x46t
        0xeet
        0xb8t
        0x14t
        0xdet
        0x5et
        0xbt
        0xdbt
        0xe0t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        0xc2t
        0xd3t
        0xact
        0x62t
        0x91t
        0x95t
        0xe4t
        0x79t
        0xe7t
        0xc8t
        0x37t
        0x6dt
        0x8dt
        0xd5t
        0x4et
        0xa9t
        0x6ct
        0x56t
        0xf4t
        0xeat
        0x65t
        0x7at
        0xaet
        0x8t
        0xbat
        0x78t
        0x25t
        0x2et
        0x1ct
        0xa6t
        0xb4t
        0xc6t
        0xe8t
        0xddt
        0x74t
        0x1ft
        0x4bt
        0xbdt
        0x8bt
        0x8at
        0x70t
        0x3et
        0xb5t
        0x66t
        0x48t
        0x3t
        0xf6t
        0xet
        0x61t
        0x35t
        0x57t
        0xb9t
        0x86t
        0xc1t
        0x1dt
        0x9et
        0xe1t
        0xf8t
        0x98t
        0x11t
        0x69t
        0xd9t
        0x8et
        0x94t
        0x9bt
        0x1et
        0x87t
        0xe9t
        0xcet
        0x55t
        0x28t
        0xdft
        0x8ct
        0xa1t
        0x89t
        0xdt
        0xbft
        0xe6t
        0x42t
        0x68t
        0x41t
        0x99t
        0x2dt
        0xft
        0xb0t
        0x54t
        0xbbt
        0x16t
    .end array-data

    :array_1
    .array-data 0x1
        0x52t
        0x9t
        0x6at
        0xd5t
        0x30t
        0x36t
        0xa5t
        0x38t
        0xbft
        0x40t
        0xa3t
        0x9et
        0x81t
        0xf3t
        0xd7t
        0xfbt
        0x7ct
        0xe3t
        0x39t
        0x82t
        0x9bt
        0x2ft
        0xfft
        0x87t
        0x34t
        0x8et
        0x43t
        0x44t
        0xc4t
        0xdet
        0xe9t
        0xcbt
        0x54t
        0x7bt
        0x94t
        0x32t
        0xa6t
        0xc2t
        0x23t
        0x3dt
        0xeet
        0x4ct
        0x95t
        0xbt
        0x42t
        0xfat
        0xc3t
        0x4et
        0x8t
        0x2et
        0xa1t
        0x66t
        0x28t
        0xd9t
        0x24t
        0xb2t
        0x76t
        0x5bt
        0xa2t
        0x49t
        0x6dt
        0x8bt
        0xd1t
        0x25t
        0x72t
        0xf8t
        0xf6t
        0x64t
        0x86t
        0x68t
        0x98t
        0x16t
        0xd4t
        0xa4t
        0x5ct
        0xcct
        0x5dt
        0x65t
        0xb6t
        0x92t
        0x6ct
        0x70t
        0x48t
        0x50t
        0xfdt
        0xedt
        0xb9t
        0xdat
        0x5et
        0x15t
        0x46t
        0x57t
        0xa7t
        0x8dt
        0x9dt
        0x84t
        0x90t
        0xd8t
        0xabt
        0x0t
        0x8ct
        0xbct
        0xd3t
        0xat
        0xf7t
        0xe4t
        0x58t
        0x5t
        0xb8t
        0xb3t
        0x45t
        0x6t
        0xd0t
        0x2ct
        0x1et
        0x8ft
        0xcat
        0x3ft
        0xft
        0x2t
        0xc1t
        0xaft
        0xbdt
        0x3t
        0x1t
        0x13t
        0x8at
        0x6bt
        0x3at
        0x91t
        0x11t
        0x41t
        0x4ft
        0x67t
        0xdct
        0xeat
        0x97t
        0xf2t
        0xcft
        0xcet
        0xf0t
        0xb4t
        0xe6t
        0x73t
        0x96t
        0xact
        0x74t
        0x22t
        0xe7t
        0xadt
        0x35t
        0x85t
        0xe2t
        0xf9t
        0x37t
        0xe8t
        0x1ct
        0x75t
        0xdft
        0x6et
        0x47t
        0xf1t
        0x1at
        0x71t
        0x1dt
        0x29t
        0xc5t
        0x89t
        0x6ft
        0xb7t
        0x62t
        0xet
        0xaat
        0x18t
        0xbet
        0x1bt
        0xfct
        0x56t
        0x3et
        0x4bt
        0xc6t
        0xd2t
        0x79t
        0x20t
        0x9at
        0xdbt
        0xc0t
        0xfet
        0x78t
        0xcdt
        0x5at
        0xf4t
        0x1ft
        0xddt
        0xa8t
        0x33t
        0x88t
        0x7t
        0xc7t
        0x31t
        0xb1t
        0x12t
        0x10t
        0x59t
        0x27t
        0x80t
        0xect
        0x5ft
        0x60t
        0x51t
        0x7ft
        0xa9t
        0x19t
        0xb5t
        0x4at
        0xdt
        0x2dt
        0xe5t
        0x7at
        0x9ft
        0x93t
        0xc9t
        0x9ct
        0xeft
        0xa0t
        0xe0t
        0x3bt
        0x4dt
        0xaet
        0x2at
        0xf5t
        0xb0t
        0xc8t
        0xebt
        0xbbt
        0x3ct
        0x83t
        0x53t
        0x99t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        0xbat
        0x77t
        0xd6t
        0x26t
        0xe1t
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    return-void
.end method

.method private FFmulX(I)I
    .locals 2

    const v0, 0x7f7f7f7f

    and-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([[I)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v0, v6, -0x1

    move v1, v0

    :goto_0
    if-le v1, v10, :cond_0

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int v2, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int v3, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int v4, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    add-int/lit8 v0, v1, -0x1

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v5, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, -0x1

    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_0

    :cond_0
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int v2, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int v3, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int v4, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v5, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    return-void
.end method

.method private encryptBlock([[I)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    aget-object v7, p1, v9

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    aget-object v7, p1, v9

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    aget-object v7, p1, v9

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    aget-object v7, p1, v9

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    const/4 v0, 0x1

    :goto_0
    iget v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v0, v1, 0x1

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    goto/16 :goto_0

    :cond_0
    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    iget v8, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x1

    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    sget-object v6, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    sget-object v7, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 11

    array-length v7, p1

    div-int/lit8 v0, v7, 0x4

    const/4 v7, 0x4

    if-eq v0, v7, :cond_0

    const/4 v7, 0x6

    if-eq v0, v7, :cond_0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_1

    :cond_0
    mul-int/lit8 v7, v0, 0x4

    array-length v8, p1

    if-eq v7, v8, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Key length not 128/192/256 bits."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    add-int/lit8 v7, v0, 0x6

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x4

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_3

    shr-int/lit8 v7, v5, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v5, 0x3

    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x3

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v4, v7, 0x2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_6

    add-int/lit8 v7, v2, -0x1

    shr-int/lit8 v7, v7, 0x2

    aget-object v7, v1, v7

    add-int/lit8 v8, v2, -0x1

    and-int/lit8 v8, v8, 0x3

    aget v6, v7, v8

    rem-int v7, v2, v0

    if-nez v7, :cond_5

    const/16 v7, 0x8

    invoke-direct {p0, v6, v7}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v7

    sget-object v8, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->rcon:[I

    div-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    xor-int v6, v7, v8

    :cond_4
    :goto_2
    shr-int/lit8 v7, v2, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v2, 0x3

    sub-int v9, v2, v0

    shr-int/lit8 v9, v9, 0x2

    aget-object v9, v1, v9

    sub-int v10, v2, v0

    and-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v9, v6

    aput v9, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x6

    if-le v0, v7, :cond_4

    rem-int v7, v2, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    invoke-direct {p0, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v6

    goto :goto_2

    :cond_6
    if-nez p2, :cond_8

    const/4 v3, 0x1

    :goto_3
    iget v7, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    if-ge v3, v7, :cond_8

    const/4 v2, 0x0

    :goto_4
    const/4 v7, 0x4

    if-ge v2, v7, :cond_7

    aget-object v7, v1, v3

    aget-object v8, v1, v3

    aget v8, v8, v2

    invoke-direct {p0, v8}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v8

    aput v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-object v1
.end method

.method private inv_mcol(I)I
    .locals 7

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v2

    xor-int v3, p1, v2

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    xor-int v5, v0, v3

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    xor-int v5, v1, v3

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    const/16 v5, 0x18

    invoke-direct {p0, v3, v5}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    return v4
.end method

.method private mcol(I)I
    .locals 3

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v0

    xor-int v1, p1, v0

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    const/16 v2, 0x18

    invoke-direct {p0, p1, v2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private packBlock([BI)V
    .locals 3

    move v0, p2

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    return-void
.end method

.method private shift(II)I
    .locals 2

    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private subWord(I)I
    .locals 3

    sget-object v0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackBlock([BI)V
    .locals 4

    move v0, p2

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->C3:I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    check-cast p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to AES init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

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
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->encryptBlock([[I)V

    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    :goto_0
    const/16 v0, 0x10

    return v0

    :cond_3
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->decryptBlock([[I)V

    invoke-direct {p0, p3, p4}, Lmyorg/bouncycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
