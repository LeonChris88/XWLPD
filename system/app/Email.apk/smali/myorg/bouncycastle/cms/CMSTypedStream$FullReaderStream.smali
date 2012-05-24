.class Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;
.super Ljava/io/InputStream;
.source "CMSTypedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSTypedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullReaderStream"
.end annotation


# instance fields
.field _stream:Ljava/io/InputStream;

.field final synthetic this$0:Lmyorg/bouncycastle/cms/CMSTypedStream;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;I)V
    .locals 1

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->this$0:Lmyorg/bouncycastle/cms/CMSTypedStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->_stream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p3, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSTypedStream$FullReaderStream;->_stream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
