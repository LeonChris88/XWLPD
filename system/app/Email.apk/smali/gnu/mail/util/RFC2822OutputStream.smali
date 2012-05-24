.class public Lgnu/mail/util/RFC2822OutputStream;
.super Ljava/io/FilterOutputStream;
.source "RFC2822OutputStream.java"


# instance fields
.field protected count:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

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

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iput v2, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    const/16 v1, 0x3e6

    if-le v0, v1, :cond_2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iput v2, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    :cond_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    goto :goto_0
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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mail/util/RFC2822OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v4, 0x0

    add-int v1, p3, p2

    move v0, p2

    :goto_0
    if-ge p2, v1, :cond_3

    iget v2, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    aget-byte v2, p1, p2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    aget-byte v2, p1, p2

    if-ne v2, v5, :cond_2

    :cond_0
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v0, p2, 0x1

    iput v4, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    const/16 v3, 0x3e6

    if-le v2, v3, :cond_1

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget v3, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, p2, 0x1

    iput v4, p0, Lgnu/mail/util/RFC2822OutputStream;->count:I

    goto :goto_1

    :cond_3
    sub-int v1, p2, v0

    if-lez v1, :cond_4

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_4
    return-void
.end method
