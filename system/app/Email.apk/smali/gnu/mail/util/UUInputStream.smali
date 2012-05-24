.class public Lgnu/mail/util/UUInputStream;
.super Ljava/io/FilterInputStream;
.source "UUInputStream.java"


# instance fields
.field body:Z

.field pending:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lgnu/inet/util/LineInputStream;

    invoke-direct {v0, p1}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method static decode(B)I
    .locals 1

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    add-int/lit8 v0, p0, -0x20

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v1, v2, [B

    :cond_0
    invoke-virtual {p0, v1, v3, v2}, Lgnu/mail/util/UUInputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    aget-byte v0, v1, v3

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mail/util/UUInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lgnu/mail/util/UUInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lgnu/inet/util/LineInputStream;

    iget-boolean v1, p0, Lgnu/mail/util/UUInputStream;->body:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "begin "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No `begin\' line"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v2, p0, Lgnu/mail/util/UUInputStream;->body:Z

    :cond_2
    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    const-string v3, "US-ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    aget-byte v1, v3, v6

    invoke-static {v1}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v1

    if-gtz v1, :cond_6

    iput-boolean v6, p0, Lgnu/mail/util/UUInputStream;->body:Z

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No `end\' line"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 p3, -0x1

    :goto_0
    return p3

    :cond_6
    move v0, v1

    move v1, v2

    :goto_1
    if-lez v0, :cond_a

    if-lt v0, v2, :cond_7

    aget-byte v4, v3, v1

    invoke-static {v4}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v3, v5

    invoke-static {v5}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    iget-object v5, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_7
    const/4 v4, 0x2

    if-lt v0, v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v3, v4

    invoke-static {v4}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, v3, v5

    invoke-static {v5}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v5

    shr-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    iget-object v5, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_8
    const/4 v4, 0x3

    if-lt v0, v4, :cond_9

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v3, v4

    invoke-static {v4}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, v3, v5

    invoke-static {v5}, Lgnu/mail/util/UUInputStream;->decode(B)I

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x3

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v0, v1

    iget-object v2, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-le v0, p3, :cond_b

    invoke-static {v1, v6, p1, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, p3

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {v1, p3, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lgnu/mail/util/UUInputStream;->pending:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_b
    invoke-static {v1, v6, p1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p3, v0

    goto :goto_0
.end method
