.class public Lgnu/inet/util/MessageOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MessageOutputStream.java"


# instance fields
.field last:[I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    return-void

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x2e

    const/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aget v0, v0, v2

    if-ne v0, v4, :cond_0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    iget-object v1, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aget v1, v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aput p1, v0, v2

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

    invoke-virtual {p0, p1, v0, v1}, Lgnu/inet/util/MessageOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x2e

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v4, 0x0

    move v0, v4

    move v1, p3

    move-object v3, p1

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    aget-byte v5, v3, v2

    iget-object v2, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aget v2, v2, v4

    if-ne v2, v10, :cond_1

    iget-object v2, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aget v2, v2, v9

    if-ne v2, v11, :cond_1

    if-ne v5, v10, :cond_1

    array-length v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    invoke-static {v3, p2, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, p2, v0

    aput-byte v11, v2, v6

    add-int v6, p2, v0

    add-int v7, p2, v0

    add-int/lit8 v7, v7, 0x1

    sub-int v8, v1, v0

    invoke-static {v3, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    iget-object v3, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    iget-object v6, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aget v6, v6, v9

    aput v6, v3, v4

    iget-object v3, p0, Lgnu/inet/util/MessageOutputStream;->last:[I

    aput v5, v3, v9

    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_1
    move-object v2, v3

    goto :goto_1
.end method
