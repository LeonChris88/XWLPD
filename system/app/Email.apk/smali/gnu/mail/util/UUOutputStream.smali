.class public Lgnu/mail/util/UUOutputStream;
.super Ljava/io/FilterOutputStream;
.source "UUOutputStream.java"


# static fields
.field static final TABLE:[B


# instance fields
.field beginLineDone:Z

.field filename:Ljava/lang/String;

.field line:[B

.field mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/mail/util/UUOutputStream;->TABLE:[B

    return-void

    :array_0
    .array-data 0x1
        0x60t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
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
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0x40t
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
        0x5bt
        0x5ct
        0x5dt
        0x5et
        0x5ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x180

    invoke-direct {p0, p1, v0, v1}, Lgnu/mail/util/UUOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-nez p2, :cond_0

    const-string p2, "file"

    :cond_0
    iput-object p2, p0, Lgnu/mail/util/UUOutputStream;->filename:Ljava/lang/String;

    iput p3, p0, Lgnu/mail/util/UUOutputStream;->mode:I

    new-array v0, v1, [B

    iput-object v0, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    iput-boolean v1, p0, Lgnu/mail/util/UUOutputStream;->beginLineDone:Z

    return-void
.end method

.method static encode(B)B
    .locals 2

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    sget-object v0, Lgnu/mail/util/UUOutputStream;->TABLE:[B

    and-int/lit8 v1, p0, 0x3f

    aget-byte v0, v0, v1

    return v0
.end method

.method static encode(I)B
    .locals 1

    int-to-byte v0, p0

    invoke-static {v0}, Lgnu/mail/util/UUOutputStream;->encode(B)B

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    iget-object v1, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lgnu/mail/util/UUOutputStream;->flush([BII)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v2}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :array_0
    .array-data 0x1
        0x65t
        0x6et
        0x64t
        0xat
    .end array-data
.end method

.method flush([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lgnu/mail/util/UUOutputStream;->beginLineDone:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/util/UUOutputStream;->writeBeginLine()V

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    int-to-byte v2, p3

    invoke-static {v2}, Lgnu/mail/util/UUOutputStream;->encode(B)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    const/4 v0, 0x2

    if-le p3, v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    aget-byte v2, p1, p2

    shr-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    aget-byte v2, p1, p2

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x30

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    invoke-static {v2}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3c

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    invoke-static {v2}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    invoke-static {v2}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p3, p3, -0x3

    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    aget-byte v2, p1, p2

    if-eq p3, v5, :cond_4

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    :goto_1
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v4, v2, 0x2

    invoke-static {v4}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v2, v4

    invoke-static {v2}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    if-ne p3, v5, :cond_3

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_3
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lgnu/mail/util/UUOutputStream;->encode(I)B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lgnu/mail/util/UUOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mail/util/UUOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x2d

    const/4 v1, 0x0

    iget-object v0, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    array-length v0, v0

    sub-int v2, p3, p2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    iget-object v2, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    iget-object v3, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    array-length v2, v2

    sub-int v3, p3, p2

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    move v0, v1

    :goto_0
    iget-object v2, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    invoke-virtual {p0, v2, v0, v4}, Lgnu/mail/util/UUOutputStream;->flush([BII)V

    add-int/lit8 v0, v0, 0x2d

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    iget-object v3, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    array-length v4, v2

    invoke-static {v3, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lgnu/mail/util/UUOutputStream;->line:[B

    return-void
.end method

.method writeBeginLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/mail/util/UUOutputStream;->mode:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/mail/util/UUOutputStream;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/mail/util/UUOutputStream;->beginLineDone:Z

    return-void
.end method
