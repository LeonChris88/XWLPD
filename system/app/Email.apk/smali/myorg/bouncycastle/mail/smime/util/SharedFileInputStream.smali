.class public Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
.super Ljava/io/FilterInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# instance fields
.field private final _file:Ljava/io/File;

.field private final _length:J

.field private _markedPosition:J

.field private final _parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

.field private _position:J

.field private final _start:J

.field private _subStreams:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    iput-wide p2, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    iput-wide p4, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    return-void
.end method

.method private constructor <init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-object v0, p1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    iput-wide p2, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    iput-wide p4, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->dispose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    return-wide v0
.end method

.method public getRoot()Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-virtual {v0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->getRoot()Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public mark(I)V
    .locals 2

    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    iput-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_markedPosition:J

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 7

    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-gez v1, :cond_2

    :try_start_0
    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    iget-wide v4, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    sub-long/2addr v4, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V

    goto :goto_0

    :cond_1
    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V

    goto :goto_0

    :cond_2
    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    sub-long v4, p3, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create shared stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    iget-wide v2, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

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

    invoke-virtual {p0, p1, v0, v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-ge v1, p3, :cond_2

    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_markedPosition:J

    iput-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->read()I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method
