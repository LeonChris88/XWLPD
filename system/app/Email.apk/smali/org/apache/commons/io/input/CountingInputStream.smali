.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    iget-wide v3, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x1

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    iget-wide v3, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v1, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    iget-wide v3, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v1, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    return-wide v0
.end method
