.class public Lmyorg/bouncycastle/cms/CMSProcessableFile;
.super Ljava/lang/Object;
.source "CMSProcessableFile.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private final _buf:[B

.field private final _file:Ljava/io/File;


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSProcessableFile;->_file:Ljava/io/File;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSProcessableFile;->_file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSProcessableFile;->_buf:[B

    iget-object v3, p0, Lmyorg/bouncycastle/cms/CMSProcessableFile;->_buf:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/cms/CMSProcessableFile;->_buf:[B

    invoke-virtual {p1, v2, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method
