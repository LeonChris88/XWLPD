.class public Lgnu/inet/util/CRLFOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CRLFOutputStream.java"


# static fields
.field public static final CRLF:[B


# instance fields
.field protected last:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, -0x1

    iput v0, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    :goto_0
    iput p1, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    return-void

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget v0, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lgnu/inet/util/CRLFOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The US-ASCII encoding is not supported on this system"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/CRLFOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    add-int v1, p3, p2

    move v0, p2

    :goto_0
    if-ge p2, v1, :cond_1

    aget-byte v2, p1, p2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    aget-byte v2, p1, p2

    iput v2, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, p2, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lgnu/inet/util/CRLFOutputStream;->last:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, p2, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :cond_1
    sub-int v2, v1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sub-int/2addr v1, v0

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeln()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/inet/util/CRLFOutputStream;->CRLF:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
