.class public final Lgnu/mail/providers/maildir/MaildirMessage;
.super Lgnu/mail/providers/ReadOnlyMessage;
.source "MaildirMessage.java"


# instance fields
.field file:Ljava/io/File;

.field uniq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgnu/mail/providers/maildir/MaildirFolder;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p5}, Lgnu/mail/providers/ReadOnlyMessage;-><init>(Ljavax/mail/Folder;I)V

    iput-object p2, p0, Lgnu/mail/providers/maildir/MaildirMessage;->file:Ljava/io/File;

    iput-object p3, p0, Lgnu/mail/providers/maildir/MaildirMessage;->uniq:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string v0, "2,"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    const-string v3, "Passed"

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x46 -> :sswitch_1
        0x50 -> :sswitch_2
        0x52 -> :sswitch_3
        0x53 -> :sswitch_4
        0x54 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_0

    check-cast p1, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getMessageNumber()I

    move-result v1

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->getMessageNumber()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method fetch()V
    .locals 3
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
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirMessage;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirMessage;->parse(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method fetchHeaders()V
    .locals 3
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
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirMessage;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
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

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

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

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

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

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetch()V

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

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetch()V

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

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

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

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

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

    invoke-virtual {p0}, Lgnu/mail/providers/maildir/MaildirMessage;->fetchHeaders()V

    :cond_0
    invoke-super {p0, p1}, Lgnu/mail/providers/ReadOnlyMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
