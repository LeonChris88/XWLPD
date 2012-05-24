.class public Lgnu/inet/util/SaslInputStream;
.super Ljava/io/FilterInputStream;
.source "SaslInputStream.java"


# instance fields
.field private buf:[B

.field private pos:I

.field private final sasl:Ljavax/security/sasl/SaslClient;


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    aget-byte v0, v0, v1

    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    iget-object v2, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-array v0, v5, [B

    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->sasl:Ljavax/security/sasl/SaslClient;

    invoke-interface {v1, v0, v4, v5}, Ljavax/security/sasl/SaslClient;->unwrap([BII)[B

    move-result-object v1

    aget-byte v0, v1, v4

    array-length v2, v1

    if-le v2, v5, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v3, v2, [B

    iput-object v3, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    iget-object v3, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    invoke-static {v1, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lgnu/inet/util/SaslInputStream;->pos:I

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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/SaslInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    sub-int v1, v0, v1

    if-gt v1, p3, :cond_0

    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    iget v2, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    move p3, v0

    :goto_0
    return p3

    :cond_0
    iget-object v0, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    iget v1, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move p3, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->sasl:Ljavax/security/sasl/SaslClient;

    invoke-interface {v1, p1, p2, v0}, Ljavax/security/sasl/SaslClient;->unwrap([BII)[B

    move-result-object v2

    array-length v1, v2

    if-le v1, p3, :cond_3

    sub-int v0, v1, p3

    new-array v1, v0, [B

    iput-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    invoke-static {v2, v4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lgnu/inet/util/SaslInputStream;->buf:[B

    invoke-static {v2, p3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lgnu/inet/util/SaslInputStream;->pos:I

    goto :goto_0

    :cond_3
    invoke-static {v2, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    add-int v3, p2, v1

    aput-byte v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move p3, v1

    goto :goto_0
.end method
