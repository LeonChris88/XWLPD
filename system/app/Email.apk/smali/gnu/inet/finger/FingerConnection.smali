.class public Lgnu/inet/finger/FingerConnection;
.super Ljava/lang/Object;
.source "FingerConnection.java"


# instance fields
.field protected socket:Ljava/net/Socket;

.field protected verbose:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lgnu/inet/finger/FingerConnection;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public finger(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/inet/finger/FingerConnection;->finger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/finger/FingerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v0, p0, Lgnu/inet/finger/FingerConnection;->verbose:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    const/16 v0, 0x57

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    if-eqz p2, :cond_3

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lgnu/inet/finger/FingerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v3, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "US-ASCII"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
