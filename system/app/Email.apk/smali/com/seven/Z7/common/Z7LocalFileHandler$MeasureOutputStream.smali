.class Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;
.super Ljava/io/OutputStream;
.source "Z7LocalFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/Z7LocalFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureOutputStream"
.end annotation


# instance fields
.field length:J

.field wrapped:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    iput-wide p2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

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

    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    return-void
.end method
