.class public Ljavax/mail/internet/EASMIMEMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "EASMIMEMessage.java"


# instance fields
.field private bufferSize:I

.field isWriten:Z

.field mMessageInuputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-boolean v1, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    iput-object p2, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    iget-object v0, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/EASMIMEMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    iput p3, p0, Ljavax/mail/internet/EASMIMEMessage;->bufferSize:I

    return-void
.end method


# virtual methods
.method protected getContentStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v3, 0x3e5

    const/16 v10, 0x9

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MYMIMEMessage can be writen only one time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljavax/mail/internet/EASMIMEMessage;->saveChanges()V

    :cond_2
    const-string v5, "US-ASCII"

    const/4 v0, 0x2

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    invoke-virtual {p0, p2}, Ljavax/mail/internet/EASMIMEMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

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

    if-eqz v2, :cond_3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    if-lez v0, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v10, :cond_4

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_4
    if-lez v0, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v2, :cond_6

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

    :cond_5
    const/16 v2, 0x3e6

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v0, :cond_9

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-nez v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Ljavax/mail/internet/EASMIMEMessage;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/internet/EASMIMEMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :goto_2
    return-void

    :cond_9
    iget-object v2, p0, Ljavax/mail/internet/EASMIMEMessage;->mMessageInuputStream:Ljava/io/InputStream;

    iget v0, p0, Ljavax/mail/internet/EASMIMEMessage;->bufferSize:I

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_3
    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/EASMIMEMessage;->isWriten:Z

    goto :goto_2

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
