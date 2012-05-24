.class public Ljavax/mail/internet/MimeMessage;
.super Ljavax/mail/Message;
.source "MimeMessage.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeMessage$RecipientType;
    }
.end annotation


# static fields
.field private static dateFormat:Ljavax/mail/internet/MailDateFormat;

.field static fc:I


# instance fields
.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected flags:Ljavax/mail/Flags;

.field protected headers:Ljavax/mail/internet/InternetHeaders;

.field protected modified:Z

.field protected saved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->dateFormat:Ljavax/mail/internet/MailDateFormat;

    const/4 v0, 0x1

    sput v0, Ljavax/mail/internet/MimeMessage;->fc:I

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    return-void
.end method

.method private getHeader(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_0

    const-string v0, "To"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    const-string v0, "Cc"

    goto :goto_0

    :cond_1
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    const-string v0, "Bcc"

    goto :goto_0

    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_3

    const-string v0, "Newsgroups"

    goto :goto_0

    :cond_3
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Invalid recipient type"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInternetAddresses(Ljava/lang/String;)[Ljavax/mail/Address;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    const-string v2, "mail.mime.address.strict"

    invoke-virtual {v0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setInternetAddresses(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

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

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Content-Description"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v0, "7bit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "quoted-printable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljavax/mail/internet/HeaderTokenizer;

    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-direct {v2, v1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v2, "mail.mime.decodefilename"

    invoke-direct {v1, v2}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    const-string v2, "true"

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    move-object v0, v1

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

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "From"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getInternetAddresses(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Sender"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getInternetAddresses(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    :cond_0
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

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

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

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1

    const-string v0, "Newsgroups"

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljavax/mail/internet/NewsAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getInternetAddresses(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    goto :goto_0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Date"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Ljavax/mail/internet/MimeMessage;->dateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v2, v1}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    array-length v0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "Subject"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    check-cast p1, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    :goto_0
    iput-boolean v4, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    return-void

    :cond_0
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    const/16 v0, 0x400

    :try_start_0
    instance-of v1, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "I/O error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public saveChanges()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateHeaders()V

    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    return-void
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Message-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "From"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "From"

    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Newsgroups"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Newsgroups"

    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/mail/internet/MimeMessage;->setInternetAddresses(Ljava/lang/String;[Ljavax/mail/Address;)V

    goto :goto_0
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setInternetAddresses(Ljava/lang/String;[Ljavax/mail/Address;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v0, "Subject"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Encoding error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected updateHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v0, "multipart/*"

    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    :cond_0
    :goto_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Content-Disposition"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v3, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-virtual {v3, v0}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "name"

    invoke-virtual {v2, v1, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v0, "Mime-Version"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateMessageId()V

    return-void

    :cond_2
    :try_start_1
    const-string v0, "message/rfc822"

    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Content-Transfer-Encoding"

    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "I/O error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected updateMessageId()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Message-ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message-ID"

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v3, 0x3e5

    const/16 v10, 0x9

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    :cond_0
    const-string v5, "US-ASCII"

    const/4 v0, 0x2

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v2, "\r\n"

    invoke-direct {v8, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    if-lez v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_2

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    if-lez v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v2, :cond_4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move v2, v3

    goto :goto_1

    :cond_3
    const/16 v2, 0x3e6

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_7

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :goto_2
    return-void

    :cond_7
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_3
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_8

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
