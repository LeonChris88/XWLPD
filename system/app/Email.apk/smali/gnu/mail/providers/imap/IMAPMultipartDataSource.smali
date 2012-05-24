.class public Lgnu/mail/providers/imap/IMAPMultipartDataSource;
.super Ljava/lang/Object;
.source "IMAPMultipartDataSource.java"

# interfaces
.implements Ljavax/mail/MultipartDataSource;


# instance fields
.field protected multipart:Lgnu/mail/providers/imap/IMAPMultipart;


# direct methods
.method protected constructor <init>(Lgnu/mail/providers/imap/IMAPMultipart;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/mail/providers/imap/IMAPMultipartDataSource;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    return-void
.end method


# virtual methods
.method public getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMultipartDataSource;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-virtual {v0, p1}, Lgnu/mail/providers/imap/IMAPMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMultipartDataSource;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMultipart;->getParent()Ljavax/mail/Part;

    move-result-object v0

    invoke-interface {v0}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMultipartDataSource;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMultipart;->getCount()I
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMultipartDataSource;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMultipart;->getParent()Ljavax/mail/Part;

    move-result-object v0

    instance-of v1, v0, Lgnu/mail/providers/imap/IMAPBodyPart;

    if-eqz v1, :cond_0

    check-cast v0, Lgnu/mail/providers/imap/IMAPBodyPart;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lgnu/mail/providers/imap/IMAPMessage;

    if-eqz v1, :cond_1

    check-cast v0, Lgnu/mail/providers/imap/IMAPMessage;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal error in part structure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPMultipartDataSource;->multipart:Lgnu/mail/providers/imap/IMAPMultipart;

    invoke-virtual {v0}, Lgnu/mail/providers/imap/IMAPMultipart;->getParent()Ljavax/mail/Part;

    move-result-object v0

    invoke-interface {v0}, Ljavax/mail/Part;->getDescription()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
