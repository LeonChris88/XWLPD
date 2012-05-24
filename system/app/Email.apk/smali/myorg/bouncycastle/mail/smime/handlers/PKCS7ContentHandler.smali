.class public Lmyorg/bouncycastle/mail/smime/handlers/PKCS7ContentHandler;
.super Ljava/lang/Object;
.source "PKCS7ContentHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private final _adf:Ljavax/activation/ActivationDataFlavor;

.field private final _dfs:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method constructor <init>(Ljavax/activation/ActivationDataFlavor;[Lmyjava/awt/datatransfer/DataFlavor;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/handlers/PKCS7ContentHandler;->_adf:Ljavax/activation/ActivationDataFlavor;

    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/handlers/PKCS7ContentHandler;->_dfs:[Lmyjava/awt/datatransfer/DataFlavor;

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v5, p1, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v5, :cond_1

    :try_start_0
    check-cast p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {p1, p3}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    instance-of v5, p1, [B

    if-eqz v5, :cond_2

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_2
    instance-of v5, p1, Ljava/io/InputStream;

    if-eqz v5, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/io/InputStream;

    instance-of v5, v2, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_3

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_4
    instance-of v5, p1, Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;

    if-eqz v5, :cond_5

    move-object v4, p1

    check-cast v4, Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;

    invoke-interface {v4, p3}, Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;->write(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown object in writeTo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
