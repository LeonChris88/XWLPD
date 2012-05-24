.class public final Lgnu/mail/providers/imap/IMAPMessage;
.super Lgnu/mail/providers/ReadOnlyMessage;
.source "IMAPMessage.java"


# static fields
.field protected static final internalDateFormat:Ljava/text/DateFormat;


# instance fields
.field protected headersComplete:Z

.field protected internalDate:Ljava/lang/String;

.field private multipart:Lgnu/mail/providers/imap/IMAPMultipart;

.field protected uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy hh:mm:ss zzzzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/imap/IMAPMessage;->internalDateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method constructor <init>(Lgnu/mail/providers/imap/IMAPFolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lgnu/mail/providers/ReadOnlyMessage;-><init>(Ljavax/mail/Folder;I)V

    iput-object v2, p0, Lgnu/mail/providers/imap/IMAPMessage;->internalDate:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->uid:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    iput-object v2, p0, Lgnu/mail/providers/imap/IMAPMessage;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    iput-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    return-void
.end method


# virtual methods
.method fetch([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lgnu/mail/providers/imap/IMAPStore;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPStore;->getConnection()Lgnu/inet/imap/IMAPConnection;

    move-result-object v2

    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    invoke-virtual {v0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljavax/mail/Folder;->open(I)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v3, 0x0

    iget v4, p0, Ljavax/mail/Message;->msgnum:I

    aput v4, v0, v3

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v0, p1}, Lgnu/inet/imap/IMAPConnection;->fetch([I[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_2

    aget-object v1, v3, v0

    invoke-virtual {v1}, Lgnu/inet/imap/MessageStatus;->getMessageNumber()I

    move-result v1

    iget v4, p0, Ljavax/mail/Message;->msgnum:I

    if-ne v1, v4, :cond_1

    aget-object v1, v3, v0

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPMessage;->update(Lgnu/inet/imap/MessageStatus;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method fetchContent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BODY.PEEK[]"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTERNALDATE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->fetch([Ljava/lang/String;)V

    return-void
.end method

.method fetchFlags()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FLAGS"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->fetch([Ljava/lang/String;)V

    return-void
.end method

.method fetchHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BODY.PEEK[HEADER]"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTERNALDATE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->fetch([Ljava/lang/String;)V

    return-void
.end method

.method fetchMultipart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BODYSTRUCTURE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->fetch([Ljava/lang/String;)V

    return-void
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-boolean v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

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

    iget-boolean v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_0
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "multipart"

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchMultipart()V

    :cond_0
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getContent()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchContent()V

    :cond_0
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "multipart"

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchMultipart()V

    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Lgnu/mail/providers/imap/IMAPMultipartDataSource;

    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPMessage;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-direct {v1, v2}, Lgnu/mail/providers/imap/IMAPMultipartDataSource;-><init>(Lgnu/mail/providers/imap/IMAPMultipart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchContent()V

    :cond_2
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public getFlags()Ljavax/mail/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchFlags()V

    :cond_0
    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->getFlags()Ljavax/mail/Flags;

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

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mail/providers/ReadOnlyMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_1
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

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_0
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_1
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

    iget-boolean v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_0
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->internalDate:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_0
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->internalDate:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    sget-object v0, Lgnu/mail/providers/imap/IMAPMessage;->internalDateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lgnu/mail/providers/imap/IMAPMessage;->internalDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method parseAtom(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "NIL"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method parseBodyPart(Ljava/util/List;Lgnu/mail/providers/imap/IMAPMultipart;Ljava/lang/String;)Lgnu/mail/providers/imap/IMAPBodyPart;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Empty [MIME-IMB] structure"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v4, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v4}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    new-instance v0, Lgnu/mail/providers/imap/IMAPBodyPart;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lgnu/mail/providers/imap/IMAPBodyPart;-><init>(Lgnu/mail/providers/imap/IMAPMessage;Lgnu/mail/providers/imap/IMAPMultipart;Ljava/lang/String;Ljavax/mail/internet/InternetHeaders;II)V

    invoke-virtual {p0, p1, v0, v4, p3}, Lgnu/mail/providers/imap/IMAPMessage;->parseMultipart(Ljava/util/List;Ljavax/mail/Part;Ljavax/mail/internet/InternetHeaders;Ljava/lang/String;)Lgnu/mail/providers/imap/IMAPMultipart;

    move-result-object v1

    iput-object v1, v0, Lgnu/mail/providers/imap/IMAPBodyPart;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x8

    if-ge v1, v0, :cond_2

    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number of fields in [MIME-IMB] structure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/mail/providers/imap/IMAPMessage;->parseParameterList(Ljava/lang/Object;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v5, -0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_3

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_3
    if-eqz v10, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :cond_4
    new-instance v10, Ljavax/mail/internet/ContentType;

    invoke-direct {v10, v0, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    new-instance v4, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v4}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    const-string v0, "Content-Type"

    invoke-virtual {v10}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_5

    const-string v0, "Content-Id"

    invoke-virtual {v4, v0, v7}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v8, :cond_6

    const-string v0, "Content-Description"

    invoke-virtual {v4, v0, v8}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v9, :cond_7

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {v4, v0, v9}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v0, 0x8

    if-le v1, v0, :cond_8

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v0, "Content-Disposition"

    invoke-virtual {v4, v0, v2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    const/16 v0, 0x9

    if-le v1, v0, :cond_9

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "Content-Language"

    invoke-virtual {v4, v1, v0}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lgnu/mail/providers/imap/IMAPBodyPart;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lgnu/mail/providers/imap/IMAPBodyPart;-><init>(Lgnu/mail/providers/imap/IMAPMessage;Lgnu/mail/providers/imap/IMAPMultipart;Ljava/lang/String;Ljavax/mail/internet/InternetHeaders;II)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number in [MIME-IMB] structure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_8

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->parseParameterList(Ljava/lang/Object;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    const-string v3, "Content-Disposition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method parseMultipart(Ljava/util/List;Ljavax/mail/Part;Ljavax/mail/internet/InternetHeaders;Ljava/lang/String;)Lgnu/mail/providers/imap/IMAPMultipart;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Empty [MIME-IMB] structure"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_2

    if-nez p4, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-direct {v9, p0, p2, v8}, Lgnu/mail/providers/imap/IMAPMultipart;-><init>(Lgnu/mail/providers/imap/IMAPMessage;Ljavax/mail/Part;Ljava/lang/String;)V

    new-instance v3, Ljavax/mail/internet/ContentType;

    invoke-virtual {v9}, Lgnu/mail/providers/imap/IMAPMultipart;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_3

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v9, v1}, Lgnu/mail/providers/imap/IMAPMessage;->parseBodyPart(Ljava/util/List;Lgnu/mail/providers/imap/IMAPMultipart;Ljava/lang/String;)Lgnu/mail/providers/imap/IMAPBodyPart;

    move-result-object v0

    invoke-virtual {v9, v0}, Lgnu/mail/providers/imap/IMAPMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    if-ge v2, v5, :cond_8

    add-int/lit8 v0, v5, -0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v5, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    const-string v4, "Content-Disposition"

    invoke-virtual {p3, v4, v0}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "Content-Language"

    invoke-virtual {p3, v0, v1}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    add-int/lit8 v0, v5, -0x2

    if-ge v2, v0, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_6

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPMessage;->parseParameterList(Ljava/lang/Object;)Ljavax/mail/internet/ParameterList;

    move-result-object v1

    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-virtual {v3}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v8, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    :goto_4
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_8
    move-object v0, v3

    goto :goto_4
.end method

.method parseParameterList(Ljava/lang/Object;)Ljavax/mail/internet/ParameterList;
    .locals 6

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v1, Ljavax/mail/internet/ParameterList;

    invoke-direct {v1}, Ljavax/mail/internet/ParameterList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_0

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lgnu/mail/providers/imap/IMAPMessage;->parseAtom(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method update(Lgnu/inet/imap/MessageStatus;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgnu/inet/imap/MessageStatus;->getCode()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_18

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    instance-of v2, v0, Lgnu/inet/imap/Pair;

    if-eqz v2, :cond_2

    check-cast v0, Lgnu/inet/imap/Pair;

    invoke-virtual {v0}, Lgnu/inet/imap/Pair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/inet/imap/Pair;->getValue()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    const-string v1, "BODY"

    if-eq v0, v1, :cond_0

    const-string v1, "RFC822"

    if-ne v0, v1, :cond_9

    :cond_0
    add-int/lit8 v0, v5, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPMessage;->parse(Ljava/io/InputStream;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v5, 0x2

    move v5, v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/String;

    move-object v2, v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v3, v4

    :goto_3
    if-ge v3, v8, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_6

    check-cast v1, Ljava/lang/String;

    const-string v9, "HEADER"

    if-ne v1, v9, :cond_7

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    iput-boolean v10, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    :cond_5
    :goto_4
    add-int/lit8 v1, v3, 0x2

    move v3, v1

    goto :goto_3

    :cond_6
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected status item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v9, "HEADER.FIELDS"

    if-ne v1, v9, :cond_8

    iget-boolean v1, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    if-nez v1, :cond_5

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    goto :goto_4

    :cond_8
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message status key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v1, "RFC822.HEADER"

    if-ne v0, v1, :cond_a

    add-int/lit8 v0, v5, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lgnu/mail/providers/imap/IMAPMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    iput-boolean v10, p0, Lgnu/mail/providers/imap/IMAPMessage;->headersComplete:Z

    goto/16 :goto_2

    :cond_a
    const-string v1, "BODYSTRUCTURE"

    if-ne v0, v1, :cond_c

    add-int/lit8 v0, v5, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v1, :cond_b

    new-instance v1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v1}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    :cond_b
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p0, v1, v2}, Lgnu/mail/providers/imap/IMAPMessage;->parseMultipart(Ljava/util/List;Ljavax/mail/Part;Ljavax/mail/internet/InternetHeaders;Ljava/lang/String;)Lgnu/mail/providers/imap/IMAPMultipart;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    goto/16 :goto_2

    :cond_c
    const-string v1, "ENVELOPE"

    if-eq v0, v1, :cond_1

    const-string v1, "FLAGS"

    if-ne v0, v1, :cond_15

    add-int/lit8 v0, v5, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lgnu/mail/providers/imap/IMAPFlags;

    invoke-direct {v1}, Lgnu/mail/providers/imap/IMAPFlags;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\\Answered"

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_5

    :cond_e
    const-string v2, "\\Deleted"

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_5

    :cond_f
    const-string v2, "\\Draft"

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_5

    :cond_10
    const-string v2, "\\Flagged"

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_5

    :cond_11
    const-string v2, "\\Recent"

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_5

    :cond_12
    const-string v2, "\\Seen"

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_5

    :cond_13
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljavax/mail/Flags;->add(Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    check-cast v0, Lgnu/mail/providers/imap/IMAPFlags;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPFlags;->checkpoint()V

    goto/16 :goto_2

    :cond_15
    const-string v1, "INTERNALDATE"

    if-ne v0, v1, :cond_16

    add-int/lit8 v0, v5, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->internalDate:Ljava/lang/String;

    goto/16 :goto_2

    :cond_16
    const-string v1, "UID"

    if-ne v0, v1, :cond_17

    add-int/lit8 v0, v5, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lgnu/mail/providers/imap/IMAPMessage;->uid:J

    goto/16 :goto_2

    :cond_17
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message status key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    return-void
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

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchContent()V

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

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchHeaders()V

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/mail/providers/imap/IMAPMessage;->fetchContent()V

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/mail/providers/ReadOnlyMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void
.end method
