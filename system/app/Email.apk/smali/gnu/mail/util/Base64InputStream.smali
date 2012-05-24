.class public Lgnu/mail/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static final dst:[B

.field private static final src:[C


# instance fields
.field private buffer:[B

.field private buflen:I

.field private decodeBuf:[B

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lgnu/mail/util/Base64InputStream;->src:[C

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lgnu/mail/util/Base64InputStream;->dst:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    sget-object v2, Lgnu/mail/util/Base64InputStream;->dst:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lgnu/mail/util/Base64InputStream;->src:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lgnu/mail/util/Base64InputStream;->dst:[B

    sget-object v2, Lgnu/mail/util/Base64InputStream;->src:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/mail/util/Base64InputStream;->buffer:[B

    return-void
.end method

.method private decode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x3

    const/4 v6, 0x0

    iput v6, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    :cond_0
    iget-object v0, p0, Lgnu/mail/util/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    int-to-byte v0, v0

    aput-byte v0, v2, v6

    move v0, v1

    move v2, v3

    :goto_1
    iget-object v4, p0, Lgnu/mail/util/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    invoke-virtual {v4, v5, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v2, :cond_4

    if-ne v4, v7, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 encoding error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sub-int/2addr v2, v4

    add-int/2addr v0, v4

    goto :goto_1

    :cond_4
    sget-object v0, Lgnu/mail/util/Base64InputStream;->dst:[B

    iget-object v2, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    aget-byte v0, v0, v2

    sget-object v2, Lgnu/mail/util/Base64InputStream;->dst:[B

    iget-object v4, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    iget-object v2, p0, Lgnu/mail/util/Base64InputStream;->buffer:[B

    iget v4, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    shl-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xfc

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    iget-object v0, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    aget-byte v0, v0, v8

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_1

    sget-object v0, Lgnu/mail/util/Base64InputStream;->dst:[B

    iget-object v2, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    aget-byte v0, v0, v2

    iget-object v2, p0, Lgnu/mail/util/Base64InputStream;->buffer:[B

    iget v4, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    iget-object v1, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    aget-byte v1, v1, v3

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    sget-object v1, Lgnu/mail/util/Base64InputStream;->dst:[B

    iget-object v2, p0, Lgnu/mail/util/Base64InputStream;->decodeBuf:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    iget-object v2, p0, Lgnu/mail/util/Base64InputStream;->buffer:[B

    iget v3, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xc0

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/mail/util/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    iget v2, p0, Lgnu/mail/util/Base64InputStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lgnu/mail/util/Base64InputStream;->index:I

    iget v1, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lgnu/mail/util/Base64InputStream;->decode()V

    iget v0, p0, Lgnu/mail/util/Base64InputStream;->buflen:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lgnu/mail/util/Base64InputStream;->index:I

    :cond_1
    iget-object v0, p0, Lgnu/mail/util/Base64InputStream;->buffer:[B

    iget v1, p0, Lgnu/mail/util/Base64InputStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/mail/util/Base64InputStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lgnu/mail/util/Base64InputStream;->read()I

    move-result v2

    if-ne v2, v0, :cond_0

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
