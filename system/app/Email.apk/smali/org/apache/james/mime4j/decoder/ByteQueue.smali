.class public Lorg/apache/james/mime4j/decoder/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->initialCapacity:I

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    goto :goto_0
.end method

.method public count()I
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public dequeue()B
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    return v0
.end method

.method public enqueue(B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/ByteQueue;->buf:Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/decoder/UnboundedFifoByteBuffer;->add(B)Z

    return-void
.end method
