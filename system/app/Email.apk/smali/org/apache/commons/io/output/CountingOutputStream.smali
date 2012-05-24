.class public Lorg/apache/commons/io/output/CountingOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    invoke-super {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    invoke-super {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([BII)V

    return-void
.end method
