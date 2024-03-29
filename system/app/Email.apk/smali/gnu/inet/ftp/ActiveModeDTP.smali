.class final Lgnu/inet/ftp/ActiveModeDTP;
.super Ljava/lang/Object;
.source "ActiveModeDTP.java"

# interfaces
.implements Lgnu/inet/ftp/DTP;
.implements Ljava/lang/Runnable;


# instance fields
.field acceptThread:Ljava/lang/Thread;

.field completed:Z

.field connectionTimeout:I

.field exception:Ljava/io/IOException;

.field in:Lgnu/inet/ftp/DTPInputStream;

.field inProgress:Z

.field out:Lgnu/inet/ftp/DTPOutputStream;

.field server:Ljava/net/ServerSocket;

.field socket:Ljava/net/Socket;

.field transferMode:I


# direct methods
.method constructor <init>(Ljava/net/InetAddress;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->completed:Z

    iput-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->inProgress:Z

    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->server:Ljava/net/ServerSocket;

    if-lez p4, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0, p4}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    :cond_0
    if-gtz p3, :cond_1

    const/16 p3, 0x4e20

    :cond_1
    iput p3, p0, Lgnu/inet/ftp/ActiveModeDTP;->connectionTimeout:I

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ActiveModeDTP"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->acceptThread:Ljava/lang/Thread;

    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->acceptThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->completed:Z

    invoke-virtual {p0}, Lgnu/inet/ftp/ActiveModeDTP;->transferComplete()V

    iget-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->inProgress:Z

    return v0
.end method

.method public complete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->completed:Z

    iget-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->inProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/inet/ftp/ActiveModeDTP;->transferComplete()V

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

    iget-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->inProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transfer in progress"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->acceptThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgnu/inet/ftp/ActiveModeDTP;->waitFor()V

    :cond_1
    iget v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->transferMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid transfer mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lgnu/inet/ftp/StreamInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/StreamInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/DTPInputStream;->setTransferComplete(Z)V

    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    return-object v0

    :pswitch_1
    new-instance v0, Lgnu/inet/ftp/BlockInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/BlockInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lgnu/inet/ftp/CompressedInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/CompressedInputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/InputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    goto :goto_0

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

    iget-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->inProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Transfer in progress"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->acceptThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgnu/inet/ftp/ActiveModeDTP;->waitFor()V

    :cond_1
    iget v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->transferMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid transfer mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lgnu/inet/ftp/StreamOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/StreamOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/DTPOutputStream;->setTransferComplete(Z)V

    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    return-object v0

    :pswitch_1
    new-instance v0, Lgnu/inet/ftp/BlockOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/BlockOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lgnu/inet/ftp/CompressedOutputStream;

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/CompressedOutputStream;-><init>(Lgnu/inet/ftp/DTP;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public setTransferMode(I)V
    .locals 0

    iput p1, p0, Lgnu/inet/ftp/ActiveModeDTP;->transferMode:I

    return-void
.end method

.method public transferComplete()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->in:Lgnu/inet/ftp/DTPInputStream;

    invoke-virtual {v1, v0}, Lgnu/inet/ftp/DTPInputStream;->setTransferComplete(Z)V

    :cond_2
    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->out:Lgnu/inet/ftp/DTPOutputStream;

    invoke-virtual {v1, v0}, Lgnu/inet/ftp/DTPOutputStream;->setTransferComplete(Z)V

    :cond_3
    iget-boolean v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->completed:Z

    if-nez v1, :cond_4

    iget v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->transferMode:I

    if-ne v1, v0, :cond_5

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->completed:Z

    iget-boolean v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->completed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public waitFor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->acceptThread:Ljava/lang/Thread;

    iget v1, p0, Lgnu/inet/ftp/ActiveModeDTP;->connectionTimeout:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->exception:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->socket:Ljava/net/Socket;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "client did not connect before timeout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/ftp/ActiveModeDTP;->acceptThread:Ljava/lang/Thread;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
