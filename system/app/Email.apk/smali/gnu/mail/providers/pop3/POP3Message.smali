.class public final Lgnu/mail/providers/pop3/POP3Message;
.super Lgnu/mail/providers/ReadOnlyMessage;
.source "POP3Message.java"


# instance fields
.field size:I

.field uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgnu/mail/providers/pop3/POP3Folder;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lgnu/mail/providers/ReadOnlyMessage;-><init>(Ljavax/mail/Folder;I)V

    iput p3, p0, Lgnu/mail/providers/pop3/POP3Message;->size:I

    return-void
.end method


# virtual methods
.method fetchContent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/pop3/POP3Store;

    iget-object v1, v0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljavax/mail/Message;->msgnum:I

    invoke-virtual {v1, v0}, Lgnu/inet/pop3/POP3Connection;->retr(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mail/providers/pop3/POP3Message;->parse(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method fetchHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/pop3/POP3Store;

    iget-object v1, v0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljavax/mail/Message;->msgnum:I

    invoke-virtual {v1, v0}, Lgnu/inet/pop3/POP3Connection;->top(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mail/providers/pop3/POP3Message;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method fetchUid()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/pop3/POP3Store;

    iget-object v1, v0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljavax/mail/Message;->msgnum:I

    invoke-virtual {v1, v0}, Lgnu/inet/pop3/POP3Connection;->uidl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/providers/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    :cond_0
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    :cond_0
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchContent()V

    :cond_0
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchContent()V

    :cond_0
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mail/providers/ReadOnlyMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    :cond_0
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    :cond_0
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget v0, p0, Lgnu/mail/providers/pop3/POP3Message;->size:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lgnu/mail/providers/pop3/POP3Message;->size:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchContent()V

    :cond_1
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchContent()V

    :cond_1
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Message;->fetchContent()V

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/mail/providers/ReadOnlyMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void
.end method
