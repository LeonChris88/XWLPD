.class public Lgnu/mail/util/QPOutputStream;
.super Ljava/io/FilterOutputStream;
.source "QPOutputStream.java"


# static fields
.field private static final hex:[C


# instance fields
.field private bytesPerLine:I

.field private count:I

.field private gotCR:Z

.field private gotSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lgnu/mail/util/QPOutputStream;->hex:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lgnu/mail/util/QPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput p2, p0, Lgnu/mail/util/QPOutputStream;->bytesPerLine:I

    iput v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

    iput-boolean v0, p0, Lgnu/mail/util/QPOutputStream;->gotSpace:Z

    iput-boolean v0, p0, Lgnu/mail/util/QPOutputStream;->gotCR:Z

    return-void
.end method

.method private outputCRLF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    iput v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

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

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lgnu/mail/util/QPOutputStream;->gotSpace:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Lgnu/mail/util/QPOutputStream;->output(IZ)V

    iput-boolean v1, p0, Lgnu/mail/util/QPOutputStream;->gotSpace:Z

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected output(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v2, 0x3d

    if-eqz p2, :cond_1

    iget v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

    iget v1, p0, Lgnu/mail/util/QPOutputStream;->bytesPerLine:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x3

    iput v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/mail/util/QPOutputStream;->hex:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lgnu/mail/util/QPOutputStream;->hex:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

    iget v1, p0, Lgnu/mail/util/QPOutputStream;->bytesPerLine:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    iput v0, p0, Lgnu/mail/util/QPOutputStream;->count:I

    :cond_2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    and-int/lit16 v0, p1, 0xff

    iget-boolean v1, p0, Lgnu/mail/util/QPOutputStream;->gotSpace:Z

    if-eqz v1, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    invoke-virtual {p0, v4, v3}, Lgnu/mail/util/QPOutputStream;->output(IZ)V

    :goto_0
    iput-boolean v2, p0, Lgnu/mail/util/QPOutputStream;->gotSpace:Z

    :cond_1
    if-ne v0, v4, :cond_3

    iput-boolean v3, p0, Lgnu/mail/util/QPOutputStream;->gotSpace:Z

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v4, v2}, Lgnu/mail/util/QPOutputStream;->output(IZ)V

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    iput-boolean v3, p0, Lgnu/mail/util/QPOutputStream;->gotCR:Z

    invoke-direct {p0}, Lgnu/mail/util/QPOutputStream;->outputCRLF()V

    goto :goto_1

    :cond_4
    if-ne v0, v5, :cond_6

    iget-boolean v0, p0, Lgnu/mail/util/QPOutputStream;->gotCR:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lgnu/mail/util/QPOutputStream;->gotCR:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lgnu/mail/util/QPOutputStream;->outputCRLF()V

    goto :goto_1

    :cond_6
    if-lt v0, v4, :cond_7

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_7

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0, v0, v3}, Lgnu/mail/util/QPOutputStream;->output(IZ)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0, v2}, Lgnu/mail/util/QPOutputStream;->output(IZ)V

    goto :goto_1
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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mail/util/QPOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lgnu/mail/util/QPOutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
