.class public final Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;
.super Ljava/lang/Object;
.source "WhirlpoolDigest.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static final C0:[J

.field private static final C1:[J

.field private static final C2:[J

.field private static final C3:[J

.field private static final C4:[J

.field private static final C5:[J

.field private static final C6:[J

.field private static final C7:[J

.field private static final EIGHT:[S

.field private static final SBOX:[I


# instance fields
.field private _K:[J

.field private _L:[J

.field private _bitCount:[S

.field private _block:[J

.field private _buffer:[B

.field private _bufferPos:I

.field private _hash:[J

.field private final _rc:[J

.field private _state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x100

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    new-array v0, v1, [J

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    const/16 v0, 0x20

    new-array v0, v0, [S

    sput-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    sget-object v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    const/16 v1, 0x1f

    const/16 v2, 0x8

    aput-short v2, v0, v1

    return-void

    :array_0
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0xfet 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0x9ft 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0xbdt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xddt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0x8dt 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xdet 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0xf7t 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 21

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xb

    new-array v1, v1, [J

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/16 v1, 0x40

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    const/16 v1, 0x20

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    const/16 v1, 0x8

    new-array v1, v1, [J

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    const/16 v1, 0x8

    new-array v1, v1, [J

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    const/16 v1, 0x8

    new-array v1, v1, [J

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    const/16 v1, 0x8

    new-array v1, v1, [J

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    const/16 v1, 0x8

    new-array v1, v1, [J

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    const/16 v19, 0x0

    :goto_0
    const/16 v1, 0x100

    move/from16 v0, v19

    if-ge v0, v1, :cond_0

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    aget v2, v1, v19

    shl-int/lit8 v1, v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v8

    shl-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v4

    xor-int v7, v4, v2

    shl-int/lit8 v1, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->maskWithReductionPolynomial(I)I

    move-result v6

    xor-int v9, v6, v2

    sget-object v10, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    move-object/from16 v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v1 .. v9}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v11

    aput-wide v11, v10, v19

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    move-object/from16 v10, p0

    move v11, v9

    move v12, v2

    move v13, v2

    move v14, v4

    move v15, v2

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v1, v19

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    move-object/from16 v10, p0

    move v11, v8

    move v12, v9

    move v13, v2

    move v14, v2

    move v15, v4

    move/from16 v16, v2

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v1, v19

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    move-object/from16 v10, p0

    move v11, v7

    move v12, v8

    move v13, v9

    move v14, v2

    move v15, v2

    move/from16 v16, v4

    move/from16 v17, v2

    move/from16 v18, v6

    invoke-direct/range {v10 .. v18}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v1, v19

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    move-object/from16 v5, p0

    move v10, v2

    move v11, v2

    move v12, v4

    move v13, v2

    invoke-direct/range {v5 .. v13}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v1, v19

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    move-object/from16 v10, p0

    move v11, v2

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v2

    move/from16 v17, v2

    move/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v1, v19

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    move-object/from16 v3, p0

    move v5, v2

    move v10, v2

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v1, v19

    sget-object v1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    move-object/from16 v10, p0

    move v11, v2

    move v12, v4

    move v13, v2

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v1, v19

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v1, v3

    const/16 v20, 0x1

    :goto_1
    const/16 v1, 0xa

    move/from16 v0, v20

    if-gt v0, v1, :cond_1

    add-int/lit8 v1, v20, -0x1

    mul-int/lit8 v19, v1, 0x8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    aget-wide v10, v3, v19

    const-wide/high16 v12, -0x100

    and-long/2addr v10, v12

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    add-int/lit8 v5, v19, 0x1

    aget-wide v12, v3, v5

    const-wide/high16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    add-int/lit8 v5, v19, 0x2

    aget-wide v12, v3, v5

    const-wide v14, 0xff0000000000L

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    add-int/lit8 v5, v19, 0x3

    aget-wide v12, v3, v5

    const-wide v14, 0xff00000000L

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    add-int/lit8 v5, v19, 0x4

    aget-wide v12, v3, v5

    const-wide v14, 0xff000000L

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    add-int/lit8 v5, v19, 0x5

    aget-wide v12, v3, v5

    const-wide/32 v14, 0xff0000

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    add-int/lit8 v5, v19, 0x6

    aget-wide v12, v3, v5

    const-wide/32 v14, 0xff00

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    sget-object v3, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    add-int/lit8 v5, v19, 0x7

    aget-wide v12, v3, v5

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, v1, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iput v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    new-array v0, v1, [J

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private bytesToLongFromBuffer([BI)J
    .locals 9

    const-wide/16 v7, 0xff

    add-int/lit8 v2, p2, 0x0

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    or-long v0, v2, v4

    return-wide v0
.end method

.method private convertLongToByteArray(J[BI)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v1, p4, v0

    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x38

    shr-long v2, p1, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyBitLength()[B
    .locals 3

    const/16 v2, 0x20

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private finish()V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->copyBitLength()[B

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-le v1, v5, :cond_1

    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-gt v1, v5, :cond_2

    invoke-virtual {p0, v4}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    return-void
.end method

.method private increment()V
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    aget-short v4, v4, v1

    add-int/2addr v3, v4

    add-int v2, v3, v0

    ushr-int/lit8 v0, v2, 0x8

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    and-int/lit16 v4, v2, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maskWithReductionPolynomial(I)I
    .locals 5

    move v0, p1

    int-to-long v1, v0

    const-wide/16 v3, 0x100

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    xor-int/lit16 v0, v0, 0x11d

    :cond_0
    return v0
.end method

.method private packIntoLong(IIIIIIII)J
    .locals 5

    int-to-long v0, p1

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p7

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p8

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private processFilledBuffer([BI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->bytesToLongFromBuffer([BI)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processBlock()V

    iput v4, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v1, v4}, Lmyorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4

    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->finish()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v1, v1, v0

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, p2

    invoke-direct {p0, v1, v2, p1, v3}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->convertLongToByteArray(J[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->reset()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v1

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Whirlpool"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method protected processBlock()V
    .locals 14

    const/16 v13, 0x20

    const/16 v12, 0x18

    const/16 v11, 0x10

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v3, v3, v0

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    xor-long/2addr v3, v6

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0xa

    if-gt v1, v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x1

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x30

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x2

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x28

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x3

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v13

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x4

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v12

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x5

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v11

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x6

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v9

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v7, v0, -0x7

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v4, v4

    invoke-static {v2, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v3, v2, v10

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    aget-wide v5, v5, v1

    xor-long/2addr v3, v5

    aput-wide v3, v2, v10

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x1

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x30

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x2

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    const/16 v8, 0x28

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x3

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v13

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x4

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v12

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x5

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v11

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x6

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    ushr-long/2addr v6, v9

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v3, v2, v0

    sget-object v5, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v7, v0, -0x7

    and-int/lit8 v7, v7, 0x7

    aget-wide v6, v6, v7

    long-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    aget-wide v5, v5, v6

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v4, v4

    invoke-static {v2, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_4

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v3, v2, v0

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    aget-wide v5, v5, v0

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v7, v7, v0

    xor-long/2addr v5, v7

    xor-long/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    iput v3, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    invoke-static {v0, v3}, Lmyorg/bouncycastle/util/Arrays;->fill([SS)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v0, v3}, Lmyorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public update(B)V
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aput-byte p1, v0, v1

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    :cond_0
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->increment()V

    return-void
.end method

.method public update([BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
