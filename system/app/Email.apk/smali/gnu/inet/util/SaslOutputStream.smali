.class public Lgnu/inet/util/SaslOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SaslOutputStream.java"


# instance fields
.field private final sasl:Ljavax/security/sasl/SaslClient;


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lgnu/inet/util/SaslOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/SaslOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/util/SaslOutputStream;->sasl:Ljavax/security/sasl/SaslClient;

    invoke-interface {v0, p1, p2, p3}, Ljavax/security/sasl/SaslClient;->wrap([BII)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-super {p0, v0, v1, v2}, Ljava/io/FilterOutputStream;->write([BII)V

    return-void
.end method
