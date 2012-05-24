.class public final Lgnu/mail/providers/nntp/NNTPMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "NNTPMessage.java"


# instance fields
.field messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgnu/mail/providers/nntp/NNTPFolder;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    iput-object p3, p0, Lgnu/mail/providers/nntp/NNTPMessage;->messageId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {p1}, Lgnu/mail/providers/nntp/NNTPFolder;->getPermanentFlags()Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1, p2}, Lgnu/mail/providers/nntp/NNTPFolder;->isSeen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestHeaders()V

    :cond_0
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

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

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestHeaders()V

    :cond_0
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestContent()V

    :cond_0
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

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

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestHeaders()V

    :cond_0
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestHeaders()V

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/mail/providers/nntp/NNTPMessage;->messageId:Ljava/lang/String;

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

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestHeaders()V

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestContent()V

    :cond_0
    invoke-super {p0}, Ljavax/mail/internet/MimeMessage;->getSize()I

    move-result v0

    return v0
.end method

.method requestContent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/FetchProfile;

    invoke-direct {v0}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v1, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/mail/providers/nntp/NNTPMessage;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iget-object v2, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2, v1, v0}, Ljavax/mail/Folder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    return-void
.end method

.method requestHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/FetchProfile;

    invoke-direct {v0}, Ljavax/mail/FetchProfile;-><init>()V

    sget-object v1, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/mail/providers/nntp/NNTPMessage;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iget-object v2, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2, v1, v0}, Ljavax/mail/Folder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    return-void
.end method

.method public saveChanges()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestHeaders()V

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/nntp/NNTPMessage;->requestContent()V

    :cond_1
    return-void
.end method

.method updateContent([B)V
    .locals 0

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    return-void
.end method

.method updateHeaders(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    return-void
.end method
