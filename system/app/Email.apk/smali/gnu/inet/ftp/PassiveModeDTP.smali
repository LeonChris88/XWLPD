.class final Lgnu/inet/ftp/PassiveModeDTP;
.super Ljava/lang/Object;
.source "PassiveModeDTP.java"

# interfaces
.implements Lgnu/inet/ftp/DTP;


# instance fields
.field final address:Ljava/lang/String;

.field completed:Z

.field in:Lgnu/inet/ftp/DTPInputStream;

.field inProgress:Z

.field out:Lgnu/inet/ftp/DTPOutputStream;

.field final port:I

.field socket:Ljava/net/Socket;

.field transferMode:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/ftp/PassiveModeDTP;->address:Ljava/lang/String;

    iput p2, p0, Lgnu/inet/ftp/PassiveModeDTP;->port:I

    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/net/InetSocketAddress;

    add-int/lit8 v2, p2, 0x1

    invoke-direct {v1, p3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    if-lez p4, :cond_1

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :goto_0
    if-lez p5, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p5}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    invoke-virtual {p0}, Lgnu/inet/ftp/PassiveModeDTP;->transferComplete()V

    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    return v0
.end method

.method public complete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/inet/ftp/PassiveModeDTP;->transferComplete()V

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transfer in progress"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid transfer mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lgnu/inet/ftp/StreamInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/StreamInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/DTPInputStream;->setTransferComplete(Z)V

    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    return-object v0

    :pswitch_1
    new-instance v0, Lgnu/inet/ftp/BlockInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/BlockInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lgnu/inet/ftp/CompressedInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/CompressedInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transfer in progress"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid transfer mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lgnu/inet/ftp/StreamOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/StreamOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/DTPOutputStream;->setTransferComplete(Z)V

    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    return-object v0

    :pswitch_1
    new-instance v0, Lgnu/inet/ftp/BlockOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/BlockOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lgnu/inet/ftp/CompressedOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/CompressedOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTransferMode(I)V
    .locals 0

    iput p1, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    return-void
.end method

.method public transferComplete()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    invoke-virtual {v2, v1}, Lgnu/inet/ftp/DTPInputStream;->setTransferComplete(Z)V

    :cond_0
    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    invoke-virtual {v2, v1}, Lgnu/inet/ftp/DTPOutputStream;->setTransferComplete(Z)V

    :cond_1
    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->inProgress:Z

    iget-boolean v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    if-nez v2, :cond_2

    iget v2, p0, Lgnu/inet/ftp/PassiveModeDTP;->transferMode:I

    if-ne v2, v1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    iget-boolean v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->completed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lgnu/inet/ftp/PassiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
