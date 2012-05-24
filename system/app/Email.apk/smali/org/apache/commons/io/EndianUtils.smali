.class public Lorg/apache/commons/io/EndianUtils;
.super Ljava/lang/Object;
.source "EndianUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Unexpected EOF reached"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static readSwappedDouble(Ljava/io/InputStream;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readSwappedFloat(Ljava/io/InputStream;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static readSwappedInteger(Ljava/io/InputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v3

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x0

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    return v4
.end method

.method public static readSwappedLong(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x8

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong([BI)J

    move-result-wide v2

    return-wide v2
.end method

.method public static readSwappedLong([BI)J
    .locals 8

    add-int/lit8 v4, p1, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    int-to-long v2, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v5, p1, 0x5

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x6

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x7

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    int-to-long v0, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static readSwappedShort(Ljava/io/InputStream;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static readSwappedUnsignedShort(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x0

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    return v2
.end method
