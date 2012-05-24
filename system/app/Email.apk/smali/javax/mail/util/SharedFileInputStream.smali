.class public Ljavax/mail/util/SharedFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# instance fields
.field protected bufpos:J

.field protected bufsize:I

.field protected datalen:J

.field protected in:Ljava/io/RandomAccessFile;

.field private final openCount:[I

.field protected start:J


# direct methods
.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream;JJ)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    invoke-direct {p0, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-object v0, p1, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    iget-object v0, p1, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget v0, p1, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iput-wide p4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v2

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iput-object v4, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    return-void
.end method

.method public getPosition()J
    .locals 4

    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public mark(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    invoke-super {p0}, Ljava/io/BufferedInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 6

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->openCount:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljavax/mail/util/SharedFileInputStream;

    sub-long v4, p3, p1

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream;JJ)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    add-long/2addr v2, p1

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    add-long/2addr v2, p1

    sub-long p1, v0, v2

    :cond_0
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    return-wide p1
.end method
