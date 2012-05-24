.class public Lgnu/inet/ftp/FTPConnection;
.super Ljava/lang/Object;
.source "FTPConnection.java"


# instance fields
.field protected connectionTimeout:I

.field protected debug:Z

.field protected dtp:Lgnu/inet/ftp/DTP;

.field protected fileStructure:I

.field protected in:Lgnu/inet/util/LineInputStream;

.field protected out:Lgnu/inet/util/CRLFOutputStream;

.field protected passive:Z

.field protected representationType:I

.field protected socket:Ljava/net/Socket;

.field protected timeout:I

.field protected transferMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lgnu/inet/ftp/FTPConnection;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lgnu/inet/ftp/FTPConnection;->representationType:I

    iput v0, p0, Lgnu/inet/ftp/FTPConnection;->fileStructure:I

    iput v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    iput p3, p0, Lgnu/inet/ftp/FTPConnection;->connectionTimeout:I

    iput p4, p0, Lgnu/inet/ftp/FTPConnection;->timeout:I

    iput-boolean p5, p0, Lgnu/inet/ftp/FTPConnection;->debug:Z

    if-gtz p2, :cond_0

    const/16 p2, 0x15

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    if-lez p3, :cond_2

    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :goto_0
    if-lez p4, :cond_1

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_1
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lgnu/inet/util/CRLFInputStream;

    invoke-direct {v0, v1}, Lgnu/inet/util/CRLFInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lgnu/inet/util/LineInputStream;

    invoke-direct {v1, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lgnu/inet/ftp/FTPConnection;->in:Lgnu/inet/util/LineInputStream;

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lgnu/inet/util/CRLFOutputStream;

    invoke-direct {v0, v1}, Lgnu/inet/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0xdc
        :pswitch_0
    .end packed-switch
.end method

.method static final parseCode(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-array v2, v5, [C

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-char v3, v2, v1

    add-int/lit8 v3, v3, -0x30

    if-ltz v3, :cond_0

    const/16 v4, 0x9

    if-le v3, v4, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v0, v3

    goto :goto_1

    :pswitch_1
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    goto :goto_1

    :pswitch_2
    add-int/2addr v0, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Lgnu/inet/ftp/FTPException;

    invoke-direct {v0, v2}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v0

    :sswitch_0
    move v0, v1

    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    new-instance v0, Lgnu/inet/ftp/FTPException;

    invoke-direct {v0, v2}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xe6 -> :sswitch_1
        0x14b -> :sswitch_2
        0x14c -> :sswitch_0
        0x212 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xca -> :sswitch_1
        0xe6 -> :sswitch_1
        0x14c -> :sswitch_3
        0x212 -> :sswitch_3
    .end sparse-switch
.end method

.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CWD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfa -> :sswitch_0
        0x226 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getResponse()Lgnu/inet/ftp/FTPResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->readResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    const/16 v2, 0xe2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->transferComplete()V

    :cond_0
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->readResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected initialiseDTP()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v1, 0x0

    const/16 v7, 0x2c

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->complete()V

    iput-object v10, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    :cond_0
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-boolean v0, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    if-eqz v0, :cond_6

    const-string v0, "PASV"

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :pswitch_0
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x2c

    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    if-lt v0, v8, :cond_1

    if-gt v0, v9, :cond_1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_2

    const/16 v0, 0x2c

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x2c

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v0, -0x1

    if-eq v4, v0, :cond_3

    if-ge v2, v4, :cond_4

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed 227: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    move v0, v2

    :goto_2
    if-lt v1, v8, :cond_5

    if-gt v1, v9, :cond_5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2c

    const/16 v7, 0x2e

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v2, v0

    new-instance v0, Lgnu/inet/ftp/PassiveModeDTP;

    iget v4, p0, Lgnu/inet/ftp/FTPConnection;->connectionTimeout:I

    iget v5, p0, Lgnu/inet/ftp/FTPConnection;->timeout:I

    invoke-direct/range {v0 .. v5}, Lgnu/inet/ftp/PassiveModeDTP;-><init>(Ljava/lang/String;ILjava/net/InetAddress;II)V

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :pswitch_1
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    iget v1, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    invoke-interface {v0, v1}, Lgnu/inet/ftp/DTP;->setTransferMode(I)V

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v1

    :cond_7
    :goto_3
    iget-object v4, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-nez v4, :cond_8

    :try_start_2
    new-instance v4, Lgnu/inet/ftp/ActiveModeDTP;

    iget v5, p0, Lgnu/inet/ftp/FTPConnection;->connectionTimeout:I

    iget v6, p0, Lgnu/inet/ftp/FTPConnection;->timeout:I

    invoke-direct {v4, v3, v2, v5, v6}, Lgnu/inet/ftp/ActiveModeDTP;-><init>(Ljava/net/InetAddress;III)V

    iput-object v4, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;
    :try_end_2
    .catch Ljava/net/BindException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x9

    if-le v0, v5, :cond_7

    throw v4

    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "PORT"

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    :goto_4
    array-length v0, v3

    if-ge v1, v0, :cond_a

    aget-byte v0, v3, v1

    if-gez v0, :cond_9

    add-int/lit16 v0, v0, 0x100

    :cond_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const v0, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v2, 0xff

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v1}, Lgnu/inet/ftp/DTP;->abort()Z

    iput-object v10, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xe3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_1
    .end packed-switch
.end method

.method public list(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "LIST"

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7d -> :sswitch_0
        0x96 -> :sswitch_0
    .end sparse-switch
.end method

.method public logout()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->complete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    :cond_0
    :try_start_1
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected readResponse()Lgnu/inet/ftp/FTPResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x20

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x4

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->in:Lgnu/inet/util/LineInputStream;

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lgnu/inet/ftp/FTPConnection;->parseCode(Ljava/lang/String;)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_3

    new-instance v0, Lgnu/inet/ftp/FTPResponse;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lgnu/inet/ftp/FTPResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_3
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->in:Lgnu/inet/util/LineInputStream;

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_5

    invoke-static {v1}, Lgnu/inet/ftp/FTPConnection;->parseCode(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_5

    new-instance v0, Lgnu/inet/ftp/FTPResponse;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lgnu/inet/ftp/FTPResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retrieve(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RETR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :sswitch_0
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7d -> :sswitch_0
        0x96 -> :sswitch_0
    .end sparse-switch
.end method

.method protected send(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v1, v0}, Lgnu/inet/util/CRLFOutputStream;->write([B)V

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->writeln()V

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->flush()V

    return-void
.end method

.method public setFileStructure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "STRU"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :pswitch_1
    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    iput p1, p0, Lgnu/inet/ftp/FTPConnection;->fileStructure:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
    .end packed-switch
.end method

.method public setPassive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    :cond_0
    return-void
.end method

.method public setRepresentationType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :pswitch_1
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    iput p1, p0, Lgnu/inet/ftp/FTPConnection;->representationType:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
    .end packed-switch
.end method

.method public setTransferMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "MODE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :pswitch_1
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    iput p1, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0, p1}, Lgnu/inet/ftp/DTP;->setTransferMode(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
    .end packed-switch
.end method

.method public store(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    :sswitch_0
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7d -> :sswitch_0
        0x96 -> :sswitch_0
    .end sparse-switch
.end method
