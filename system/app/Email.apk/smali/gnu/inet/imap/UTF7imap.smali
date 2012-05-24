.class public final Lgnu/inet/imap/UTF7imap;
.super Ljava/lang/Object;
.source "UTF7imap.java"


# static fields
.field private static final dst:[B

.field private static final src:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lgnu/inet/imap/UTF7imap;->src:[B

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lgnu/inet/imap/UTF7imap;->dst:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    sget-object v2, Lgnu/inet/imap/UTF7imap;->dst:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lgnu/inet/imap/UTF7imap;->src:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lgnu/inet/imap/UTF7imap;->dst:[B

    sget-object v2, Lgnu/inet/imap/UTF7imap;->src:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ct
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/16 v9, 0x26

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v4, v3

    move v2, v3

    move-object v1, v0

    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_7

    aget-char v6, v5, v4

    if-ne v6, v9, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-char v6, v5, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v2, 0x1

    move v10, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v10

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v10, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v10

    goto :goto_0

    :cond_1
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    move-object v2, v1

    move-object v1, v0

    move v0, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lgnu/inet/imap/UTF7imap;->decode([B)[I

    move-result-object v6

    move v2, v3

    :goto_3
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_2

    aget v7, v6, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, v6, v8

    mul-int/lit16 v7, v7, 0x100

    or-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v10, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    move v10, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method static decode([B)[I
    .locals 9

    const/4 v5, 0x0

    array-length v0, p0

    new-array v6, v0, [I

    array-length v0, p0

    sub-int/2addr v0, v5

    move v4, v0

    move v1, v5

    move v0, v5

    :goto_0
    if-lez v4, :cond_0

    sget-object v2, Lgnu/inet/imap/UTF7imap;->dst:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v2, v2, v0

    sget-object v7, Lgnu/inet/imap/UTF7imap;->dst:[B

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v7, v7, v3

    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xfc

    ushr-int/lit8 v8, v7, 0x4

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v2, v8

    aput v2, v6, v1

    const/4 v1, 0x2

    if-le v4, v1, :cond_2

    sget-object v2, Lgnu/inet/imap/UTF7imap;->dst:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v8, v2, v0

    add-int/lit8 v2, v3, 0x1

    shl-int/lit8 v0, v7, 0x4

    and-int/lit16 v0, v0, 0xf0

    ushr-int/lit8 v7, v8, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v0, v7

    aput v0, v6, v3

    const/4 v0, 0x3

    if-le v4, v0, :cond_1

    sget-object v3, Lgnu/inet/imap/UTF7imap;->dst:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, v3, v1

    add-int/lit8 v1, v2, 0x1

    shl-int/lit8 v4, v8, 0x6

    and-int/lit16 v4, v4, 0xc0

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    aput v3, v6, v2

    :goto_1
    array-length v2, p0

    sub-int/2addr v2, v0

    move v4, v2

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    invoke-static {v6, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v2, 0x0

    const/16 v10, 0x26

    const/16 v9, 0x2d

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v5, v1

    move v0, v1

    move-object v3, v2

    :goto_0
    array-length v4, v6

    if-ge v5, v4, :cond_a

    aget-char v7, v6, v5

    if-ne v7, v10, :cond_1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_0

    aget-char v8, v6, v4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const/16 v4, 0x1f

    if-lt v7, v4, :cond_2

    const/16 v4, 0x7f

    if-le v7, v4, :cond_7

    :cond_2
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    aget-char v4, v6, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v0, 0x26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :cond_5
    div-int/lit16 v4, v7, 0x100

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    rem-int/lit16 v4, v7, 0x100

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lgnu/inet/imap/UTF7imap;->encode([B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    const-string v8, "US-ASCII"

    invoke-direct {v4, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x2d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eq v7, v9, :cond_8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-eqz v0, :cond_b

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lgnu/inet/imap/UTF7imap;->encode([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x2d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method static encode([B)[B
    .locals 9

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    new-array v2, v1, [B

    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    array-length v3, p0

    sub-int/2addr v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    aget-byte v3, p0, v1

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lgnu/inet/imap/UTF7imap;->src:[B

    ushr-int/lit8 v6, v3, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lgnu/inet/imap/UTF7imap;->src:[B

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x30

    add-int/lit8 v3, v3, 0x0

    aget-byte v3, v5, v3

    aput-byte v3, v2, v4

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    aget-byte v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lgnu/inet/imap/UTF7imap;->src:[B

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v2, v0

    add-int/lit8 v6, v5, 0x1

    sget-object v0, Lgnu/inet/imap/UTF7imap;->src:[B

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x30

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v3, v7

    aget-byte v0, v0, v3

    aput-byte v0, v2, v5

    add-int/lit8 v0, v6, 0x1

    sget-object v3, Lgnu/inet/imap/UTF7imap;->src:[B

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3c

    add-int/lit8 v4, v4, 0x0

    aget-byte v3, v3, v4

    aput-byte v3, v2, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    aget-byte v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    add-int/lit8 v6, v0, 0x1

    sget-object v7, Lgnu/inet/imap/UTF7imap;->src:[B

    ushr-int/lit8 v8, v3, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, v2, v0

    add-int/lit8 v0, v6, 0x1

    sget-object v7, Lgnu/inet/imap/UTF7imap;->src:[B

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x30

    ushr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v3, v8

    aget-byte v3, v7, v3

    aput-byte v3, v2, v6

    add-int/lit8 v3, v0, 0x1

    sget-object v6, Lgnu/inet/imap/UTF7imap;->src:[B

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3c

    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    aget-byte v4, v6, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lgnu/inet/imap/UTF7imap;->src:[B

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    goto :goto_1

    :cond_3
    return-object v2
.end method
