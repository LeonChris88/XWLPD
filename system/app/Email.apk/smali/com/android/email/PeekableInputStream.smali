.class public Lcom/android/email/PeekableInputStream;
.super Ljava/io/InputStream;
.source "PeekableInputStream.java"


# instance fields
.field private final mIn:Ljava/io/InputStream;

.field private mPeeked:Z

.field private mPeekedByte:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/PeekableInputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    :cond_0
    iget v0, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    iget v0, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/email/PeekableInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    iput-boolean v2, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    iget-object v1, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PeekableInputStream(in=%s, peeked=%b, peekedByte=%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/PeekableInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/PeekableInputStream;->mPeeked:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/email/PeekableInputStream;->mPeekedByte:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
