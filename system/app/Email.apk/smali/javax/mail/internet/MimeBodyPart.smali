.class public Ljavax/mail/internet/MimeBodyPart;
.super Ljavax/mail/BodyPart;
.source "MimeBodyPart.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# instance fields
.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected headers:Ljavax/mail/internet/InternetHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    check-cast p1, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    :goto_0
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
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const/16 v0, 0x400

    :try_start_0
    instance-of v1, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

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

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public attachFile(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine MIME type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public attachFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;)V

    return-void
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

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

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

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

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    return-object v0
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

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, v2, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v2, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    new-instance v1, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v2, "mail.mime.decodefilename"

    invoke-direct {v1, v2}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    const-string v2, "true"

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

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

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

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

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

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

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    array-length v0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

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

.method public isMimeType(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/activation/DataHandler;

    new-instance v1, Ljavax/activation/FileDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/mail/Multipart;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    goto :goto_0
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

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "Content-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavax/mail/internet/ContentDisposition;->setDisposition(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "mail.mime.encodefilename"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    const-string v1, "true"

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, v2}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "attachment"

    :cond_1
    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-virtual {v1, v0, p1}, Ljavax/mail/internet/ContentDisposition;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Disposition"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, v2}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {v1, v0, p1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    const-string v0, "text/plain"

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v0, "multipart/*"

    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    :cond_0
    :goto_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Content-Disposition"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "message/rfc822"

    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Content-Transfer-Encoding"

    iget-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

.method public writeTo(Ljava/io/OutputStream;)V
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

    const/4 v0, 0x2

    new-array v5, v0, [B

    fill-array-data v5, :array_0

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v2, "\r\n"

    invoke-direct {v7, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    if-lez v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_1

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    if-lez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v2, :cond_3

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    move v2, v3

    goto :goto_1

    :cond_2
    const/16 v2, 0x3e6

    goto :goto_1

    :cond_3
    const-string v2, "US-ASCII"

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
