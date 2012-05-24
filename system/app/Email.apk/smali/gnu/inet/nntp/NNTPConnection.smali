.class public Lgnu/inet/nntp/NNTPConnection;
.super Ljava/lang/Object;
.source "NNTPConnection.java"

# interfaces
.implements Lgnu/inet/nntp/NNTPConstants;


# static fields
.field public static final NNTP_TRACE:Ljava/util/logging/Level;

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected hostname:Ljava/lang/String;

.field protected in:Lgnu/inet/util/LineInputStream;

.field protected out:Lgnu/inet/util/CRLFOutputStream;

.field protected pendingData:Lgnu/inet/nntp/PendingData;

.field protected welcome:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gnu.inet.nntp"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/inet/nntp/NNTPConnection;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lgnu/inet/util/TraceLevel;

    const-string v1, "nntp"

    invoke-direct {v0, v1}, Lgnu/inet/util/TraceLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/inet/nntp/NNTPConnection;->NNTP_TRACE:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public article(Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ARTICLE"

    invoke-virtual {p0, v0, p1}, Lgnu/inet/nntp/NNTPConnection;->articleImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v0

    return-object v0
.end method

.method protected articleImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->send(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lgnu/inet/nntp/NNTPConnection;->read()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->parseResponse(Ljava/lang/String;)Lgnu/inet/nntp/StatusResponse;

    move-result-object v0

    iget-short v1, v0, Lgnu/inet/nntp/StatusResponse;->status:S

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lgnu/inet/nntp/NNTPException;

    invoke-direct {v1, v0}, Lgnu/inet/nntp/NNTPException;-><init>(Lgnu/inet/nntp/StatusResponse;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lgnu/inet/nntp/NNTPConnection;->send(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    check-cast v0, Lgnu/inet/nntp/ArticleResponse;

    new-instance v1, Lgnu/inet/nntp/ArticleStream;

    new-instance v2, Lgnu/inet/util/MessageInputStream;

    iget-object v3, p0, Lgnu/inet/nntp/NNTPConnection;->in:Lgnu/inet/util/LineInputStream;

    invoke-direct {v2, v3}, Lgnu/inet/util/MessageInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lgnu/inet/nntp/ArticleStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lgnu/inet/nntp/NNTPConnection;->pendingData:Lgnu/inet/nntp/PendingData;

    iput-object v1, v0, Lgnu/inet/nntp/ArticleResponse;->in:Ljava/io/InputStream;

    :goto_1
    return-object v0

    :pswitch_1
    check-cast v0, Lgnu/inet/nntp/ArticleResponse;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xdc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public body(Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BODY"

    invoke-virtual {p0, v0, p1}, Lgnu/inet/nntp/NNTPConnection;->articleImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getWelcome()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->welcome:Ljava/lang/String;

    return-object v0
.end method

.method public group(Ljava/lang/String;)Lgnu/inet/nntp/GroupResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GROUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/nntp/NNTPConnection;->read()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->parseResponse(Ljava/lang/String;)Lgnu/inet/nntp/StatusResponse;

    move-result-object v0

    iget-short v1, v0, Lgnu/inet/nntp/StatusResponse;->status:S

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lgnu/inet/nntp/NNTPException;

    invoke-direct {v1, v0}, Lgnu/inet/nntp/NNTPException;-><init>(Lgnu/inet/nntp/StatusResponse;)V

    throw v1

    :pswitch_0
    check-cast v0, Lgnu/inet/nntp/GroupResponse;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_0
    .end packed-switch
.end method

.method public head(Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HEAD"

    invoke-virtual {p0, v0, p1}, Lgnu/inet/nntp/NNTPConnection;->articleImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v0

    return-object v0
.end method

.method parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd HHmmss \'GMT\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)Lgnu/inet/nntp/StatusResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/inet/nntp/NNTPConnection;->parseResponse(Ljava/lang/String;Z)Lgnu/inet/nntp/StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;Z)Lgnu/inet/nntp/StatusResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/16 v2, 0x20

    if-nez p1, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/inet/nntp/NNTPConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closed connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-le v2, v1, :cond_9

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Lgnu/inet/nntp/StatusResponse;

    invoke-direct {v0, v3, v1}, Lgnu/inet/nntp/StatusResponse;-><init>(SLjava/lang/String;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0xd3

    if-ne v3, v0, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    :try_start_1
    new-instance v0, Lgnu/inet/nntp/ArticleResponse;

    invoke-direct {v0, v3, v1}, Lgnu/inet/nntp/ArticleResponse;-><init>(SLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x20

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-le v4, v2, :cond_2

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lgnu/inet/nntp/ArticleResponse;->articleNumber:I

    :cond_2
    add-int/lit8 v2, v4, 0x1

    const/16 v4, 0x20

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-le v4, v2, :cond_3

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgnu/inet/nntp/ArticleResponse;->messageId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v0, Lgnu/inet/nntp/StatusResponse;

    invoke-direct {v0, v3, v1}, Lgnu/inet/nntp/StatusResponse;-><init>(SLjava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgnu/inet/nntp/ArticleResponse;->messageId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_4
    new-instance v0, Lgnu/inet/nntp/GroupResponse;

    invoke-direct {v0, v3, v1}, Lgnu/inet/nntp/GroupResponse;-><init>(SLjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x20

    :try_start_3
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-le v2, v1, :cond_5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgnu/inet/nntp/GroupResponse;->count:I

    :cond_5
    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-le v2, v1, :cond_6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgnu/inet/nntp/GroupResponse;->first:I

    :cond_6
    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-le v2, v1, :cond_7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgnu/inet/nntp/GroupResponse;->last:I

    :cond_7
    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-le v2, v1, :cond_8

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnu/inet/nntp/GroupResponse;->group:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgnu/inet/nntp/GroupResponse;->group:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :cond_9
    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xd3 -> :sswitch_0
        0xdc -> :sswitch_0
        0xdd -> :sswitch_0
        0xde -> :sswitch_0
        0xdf -> :sswitch_0
    .end sparse-switch
.end method

.method postComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/nntp/NNTPConnection;->read()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->parseResponse(Ljava/lang/String;)Lgnu/inet/nntp/StatusResponse;

    move-result-object v0

    iget-short v1, v0, Lgnu/inet/nntp/StatusResponse;->status:S

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lgnu/inet/nntp/NNTPException;

    invoke-direct {v1, v0}, Lgnu/inet/nntp/NNTPException;-><init>(Lgnu/inet/nntp/StatusResponse;)V

    throw v1

    :sswitch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xeb -> :sswitch_0
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected read()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->in:Lgnu/inet/util/LineInputStream;

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lgnu/inet/nntp/NNTPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lgnu/inet/nntp/NNTPConnection;->NNTP_TRACE:Ljava/util/logging/Level;

    const-string v3, "<EOF"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lgnu/inet/nntp/NNTPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lgnu/inet/nntp/NNTPConnection;->NNTP_TRACE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected send(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->pendingData:Lgnu/inet/nntp/PendingData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->pendingData:Lgnu/inet/nntp/PendingData;

    invoke-interface {v0}, Lgnu/inet/nntp/PendingData;->readToEOF()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->pendingData:Lgnu/inet/nntp/PendingData;

    :cond_0
    sget-object v0, Lgnu/inet/nntp/NNTPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/inet/nntp/NNTPConnection;->NNTP_TRACE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lgnu/inet/nntp/NNTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v1, v0}, Lgnu/inet/util/CRLFOutputStream;->write([B)V

    iget-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->writeln()V

    iget-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->flush()V

    return-void
.end method

.method public stat(I)Lgnu/inet/nntp/ArticleResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "STAT"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/inet/nntp/NNTPConnection;->articleImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v0

    return-object v0
.end method

.method takethisComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/nntp/NNTPConnection;->read()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->parseResponse(Ljava/lang/String;)Lgnu/inet/nntp/StatusResponse;

    move-result-object v0

    iget-short v1, v0, Lgnu/inet/nntp/StatusResponse;->status:S

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lgnu/inet/nntp/NNTPException;

    invoke-direct {v1, v0}, Lgnu/inet/nntp/NNTPException;-><init>(Lgnu/inet/nntp/StatusResponse;)V

    throw v1

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xef
        :pswitch_0
    .end packed-switch
.end method

.method public xhdr(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/nntp/HeaderIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "XHDR"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/inet/nntp/NNTPConnection;->read()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/nntp/NNTPConnection;->parseResponse(Ljava/lang/String;)Lgnu/inet/nntp/StatusResponse;

    move-result-object v0

    iget-short v1, v0, Lgnu/inet/nntp/StatusResponse;->status:S

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lgnu/inet/nntp/NNTPException;

    invoke-direct {v1, v0}, Lgnu/inet/nntp/NNTPException;-><init>(Lgnu/inet/nntp/StatusResponse;)V

    throw v1

    :pswitch_0
    new-instance v0, Lgnu/inet/nntp/HeaderIterator;

    invoke-direct {v0, p0}, Lgnu/inet/nntp/HeaderIterator;-><init>(Lgnu/inet/nntp/NNTPConnection;)V

    iput-object v0, p0, Lgnu/inet/nntp/NNTPConnection;->pendingData:Lgnu/inet/nntp/PendingData;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_0
    .end packed-switch
.end method
