.class public Lcom/android/email/mail/transport/EOLConvertingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "EOLConvertingOutputStream.java"


# instance fields
.field lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xa

    iget v0, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-super {p0, v2}, Ljava/io/FilterOutputStream;->write(I)V

    iput v2, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xd

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    if-eq v0, v1, :cond_0

    invoke-super {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iput p1, p0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->lastChar:I

    return-void
.end method
