.class Lorg/apache/james/mime4j/message/MemoryTextBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "MemoryTextBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/TextBody;


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private mimeCharset:Ljava/lang/String;

.field private tempFile:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/james/mime4j/message/MemoryTextBody;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MemoryTextBody;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->tempFile:[B

    iput-object p2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    invoke-static {}, Lorg/apache/james/mime4j/util/TempStorage;->getInstance()Lorg/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->tempFile:[B

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->tempFile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void
.end method
