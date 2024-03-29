.class public final Lgnu/mail/providers/nntp/NNTPFolder;
.super Ljavax/mail/Folder;
.source "NNTPFolder.java"


# instance fields
.field articleCache:Ljava/util/Map;

.field count:I

.field first:I

.field last:I

.field name:Ljava/lang/String;

.field open:Z


# direct methods
.method constructor <init>(Lgnu/mail/providers/nntp/NNTPStore;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    iput v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    iput v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->last:I

    iput v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->count:I

    iput-object p2, p0, Lgnu/mail/providers/nntp/NNTPFolder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    iget-object v1, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    monitor-enter v1
    :try_end_0
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    iget-object v2, p0, Lgnu/mail/providers/nntp/NNTPFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lgnu/inet/nntp/NNTPConnection;->group(Ljava/lang/String;)Lgnu/inet/nntp/GroupResponse;

    move-result-object v0

    iget v2, v0, Lgnu/inet/nntp/GroupResponse;->count:I

    iput v2, p0, Lgnu/mail/providers/nntp/NNTPFolder;->count:I

    iget v2, v0, Lgnu/inet/nntp/GroupResponse;->first:I

    iput v2, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    iget v0, v0, Lgnu/inet/nntp/GroupResponse;->last:I

    iput v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->last:I

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getResponse()Lgnu/inet/nntp/StatusResponse;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/inet/nntp/StatusResponse;->getStatus()S

    move-result v1

    const/16 v2, 0x19b

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v3}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    const/4 v2, 0x3

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    move v5, v1

    :goto_2
    array-length v1, p1

    if-ge v5, v1, :cond_8

    aget-object v1, p1, v5

    if-eqz v1, :cond_2

    instance-of v3, v1, Lgnu/mail/providers/nntp/NNTPMessage;

    if-nez v3, :cond_6

    :cond_2
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    if-nez v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_6
    check-cast v1, Lgnu/mail/providers/nntp/NNTPMessage;

    invoke-virtual {v1}, Lgnu/mail/providers/nntp/NNTPMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v6, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    monitor-enter v6
    :try_end_0
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v2, :pswitch_data_0

    move-object v4, v3

    :goto_4
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v8, v3, [B

    iget-object v3, v4, Lgnu/inet/nntp/ArticleResponse;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_5
    const/4 v9, -0x1

    if-le v3, v9, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, v4, Lgnu/inet/nntp/ArticleResponse;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_5

    :pswitch_0
    iget-object v3, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v3, v4}, Lgnu/inet/nntp/NNTPConnection;->article(Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v3

    move-object v4, v3

    goto :goto_4

    :pswitch_1
    iget-object v3, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v3, v4}, Lgnu/inet/nntp/NNTPConnection;->head(Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v3

    move-object v4, v3

    goto :goto_4

    :pswitch_2
    iget-object v3, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v3, v4}, Lgnu/inet/nntp/NNTPConnection;->body(Ljava/lang/String;)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v3

    move-object v4, v3

    goto :goto_4

    :cond_7
    packed-switch v2, :pswitch_data_1

    :goto_6
    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getResponse()Lgnu/inet/nntp/StatusResponse;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/inet/nntp/StatusResponse;->getStatus()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :pswitch_3
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Lgnu/mail/providers/nntp/NNTPMessage;->updateHeaders(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-virtual {v1, v4}, Lgnu/mail/providers/nntp/NNTPMessage;->updateContent([B)V

    goto :goto_6

    :pswitch_4
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Lgnu/mail/providers/nntp/NNTPMessage;->updateHeaders(Ljava/io/InputStream;)V

    goto :goto_6

    :pswitch_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/mail/providers/nntp/NNTPMessage;->updateContent([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :sswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x19c -> :sswitch_0
        0x1a4 -> :sswitch_1
        0x1a7 -> :sswitch_1
        0x1ae -> :sswitch_1
    .end sparse-switch
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    invoke-direct {v0}, Ljavax/mail/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->open:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->articleCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/nntp/NNTPMessage;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    iget-object v2, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    monitor-enter v2
    :try_end_0
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    iget-object v3, p0, Lgnu/mail/providers/nntp/NNTPFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lgnu/inet/nntp/NNTPConnection;->group(Ljava/lang/String;)Lgnu/inet/nntp/GroupResponse;

    move-result-object v0

    iget v3, v0, Lgnu/inet/nntp/GroupResponse;->first:I

    iput v3, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    iget v3, v0, Lgnu/inet/nntp/GroupResponse;->last:I

    iput v3, p0, Lgnu/mail/providers/nntp/NNTPFolder;->last:I

    iget v0, v0, Lgnu/inet/nntp/GroupResponse;->count:I

    iput v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->count:I

    add-int/lit8 v0, p1, -0x1

    iget v3, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lgnu/mail/providers/nntp/NNTPFolder;->getMessageImpl(I)Lgnu/mail/providers/nntp/NNTPMessage;

    move-result-object v0

    iget-object v3, p0, Lgnu/mail/providers/nntp/NNTPFolder;->articleCache:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getResponse()Lgnu/inet/nntp/StatusResponse;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/inet/nntp/StatusResponse;->getStatus()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :sswitch_0
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a4 -> :sswitch_0
        0x1a7 -> :sswitch_0
        0x1ae -> :sswitch_0
    .end sparse-switch
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->count:I

    return v0
.end method

.method getMessageImpl(I)Lgnu/mail/providers/nntp/NNTPMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v0, p1}, Lgnu/inet/nntp/NNTPConnection;->stat(I)Lgnu/inet/nntp/ArticleResponse;

    move-result-object v0

    iget-object v0, v0, Lgnu/inet/nntp/ArticleResponse;->messageId:Ljava/lang/String;

    new-instance v1, Lgnu/mail/providers/nntp/NNTPMessage;

    invoke-direct {v1, p0, p1, v0}, Lgnu/mail/providers/nntp/NNTPMessage;-><init>(Lgnu/mail/providers/nntp/NNTPFolder;ILjava/lang/String;)V

    return-object v1
.end method

.method public getMessages()[Ljavax/mail/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    monitor-enter v3

    :try_start_0
    iget-object v1, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    iget-object v4, p0, Lgnu/mail/providers/nntp/NNTPFolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lgnu/inet/nntp/NNTPConnection;->group(Ljava/lang/String;)Lgnu/inet/nntp/GroupResponse;

    move-result-object v1

    iget v4, v1, Lgnu/inet/nntp/GroupResponse;->first:I

    iput v4, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    iget v4, v1, Lgnu/inet/nntp/GroupResponse;->last:I

    iput v4, p0, Lgnu/mail/providers/nntp/NNTPFolder;->last:I

    iget v1, v1, Lgnu/inet/nntp/GroupResponse;->count:I

    iput v1, p0, Lgnu/mail/providers/nntp/NNTPFolder;->count:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v4, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v4, p0, Lgnu/mail/providers/nntp/NNTPFolder;->last:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    const-string v4, "Message-ID"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lgnu/inet/nntp/NNTPConnection;->xhdr(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/nntp/HeaderIterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lgnu/inet/nntp/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lgnu/inet/nntp/HeaderIterator;->nextHeaderEntry()Lgnu/inet/nntp/HeaderEntry;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lgnu/inet/nntp/HeaderEntry;->getArticleId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->articleCache:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/nntp/NNTPMessage;

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Lgnu/inet/nntp/HeaderEntry;->getHeader()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lgnu/mail/providers/nntp/NNTPMessage;

    invoke-direct {v0, p0, v6, v4}, Lgnu/mail/providers/nntp/NNTPMessage;-><init>(Lgnu/mail/providers/nntp/NNTPFolder;ILjava/lang/String;)V

    iget-object v4, p0, Lgnu/mail/providers/nntp/NNTPFolder;->articleCache:Ljava/util/Map;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    move v1, v0

    :goto_1
    iget v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->last:I

    if-gt v1, v0, :cond_2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->articleCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/nntp/NNTPMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0, v1}, Lgnu/mail/providers/nntp/NNTPFolder;->getMessageImpl(I)Lgnu/mail/providers/nntp/NNTPMessage;

    move-result-object v0

    iget-object v5, p0, Lgnu/mail/providers/nntp/NNTPFolder;->articleCache:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :sswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getResponse()Lgnu/inet/nntp/StatusResponse;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/inet/nntp/StatusResponse;->getStatus()S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Message;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1a4 -> :sswitch_0
        0x1a7 -> :sswitch_0
        0x1ae -> :sswitch_0
    .end sparse-switch
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .locals 2

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    new-instance v1, Ljavax/mail/Flags;

    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->permanentFlags:Ljavax/mail/Flags;

    invoke-direct {v1, v0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    return-object v1
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->open:Z

    return v0
.end method

.method isSeen(I)Z
    .locals 2

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->newsrc:Lgnu/inet/nntp/Newsrc;

    iget-object v1, p0, Lgnu/mail/providers/nntp/NNTPFolder;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lgnu/inet/nntp/Newsrc;->isSeen(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public open(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->open:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    iget-object v1, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    monitor-enter v1
    :try_end_0
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    iget-object v2, p0, Lgnu/mail/providers/nntp/NNTPFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lgnu/inet/nntp/NNTPConnection;->group(Ljava/lang/String;)Lgnu/inet/nntp/GroupResponse;

    move-result-object v0

    iget v2, v0, Lgnu/inet/nntp/GroupResponse;->count:I

    iput v2, p0, Lgnu/mail/providers/nntp/NNTPFolder;->count:I

    iget v2, v0, Lgnu/inet/nntp/GroupResponse;->first:I

    iput v2, p0, Lgnu/mail/providers/nntp/NNTPFolder;->first:I

    iget v0, v0, Lgnu/inet/nntp/GroupResponse;->last:I

    iput v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->last:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->articleCache:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/mail/providers/nntp/NNTPFolder;->open:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/nntp/NNTPFolder;->notifyConnectionListeners(I)V
    :try_end_2
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lgnu/inet/nntp/NNTPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getResponse()Lgnu/inet/nntp/StatusResponse;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/inet/nntp/StatusResponse;->getStatus()S

    move-result v1

    const/16 v2, 0x19b

    if-ne v1, v2, :cond_1

    new-instance v1, Ljavax/mail/FolderNotFoundException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljava/lang/String;Ljavax/mail/Folder;)V

    throw v1

    :cond_1
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
