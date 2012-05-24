.class public Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;
.super Ljava/lang/Object;
.source "multipart_signed.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;
    }
.end annotation


# static fields
.field private static final ADF:Ljavax/activation/ActivationDataFlavor;

.field private static final DFS:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljavax/mail/internet/MimeMultipart;

    const-string v2, "multipart/signed"

    const-string v3, "Multipart Signed"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->ADF:Ljavax/activation/ActivationDataFlavor;

    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    sget-object v2, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->ADF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->DFS:[Lmyjava/awt/datatransfer/DataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v7, p2, Ljavax/mail/Multipart;

    if-eqz v7, :cond_1

    move-object v6, p2

    check-cast v6, Ljavax/mail/Multipart;

    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {v6}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;

    invoke-direct {v4, p1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v6}, Ljavax/mail/Multipart;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    move-object v5, p2

    check-cast v5, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "multipart"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/Multipart;

    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {v6}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;

    invoke-direct {v4, p1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln()V

    invoke-static {v4, v5, v0}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputPreamble(Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V

    invoke-direct {p0, p1, v6}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1
.end method

.method static outputPreamble(Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-nez v2, :cond_1

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "no boundary found"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v1, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v5, p1, Ljavax/mail/internet/MimeMultipart;

    if-eqz v5, :cond_1

    :try_start_0
    invoke-direct {p0, p3, p1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V
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
