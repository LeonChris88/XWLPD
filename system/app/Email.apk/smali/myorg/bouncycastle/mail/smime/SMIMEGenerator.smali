.class public Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;
.super Ljava/lang/Object;
.source "SMIMEGenerator.java"


# static fields
.field private static BASE_CIPHER_NAMES:Ljava/util/Map;


# instance fields
.field protected encoding:Ljava/lang/String;

.field protected useBase64:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    const-string v2, "DESEDE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    const-string v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->useBase64:Z

    const-string v0, "base64"

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->encoding:Ljava/lang/String;

    return-void
.end method

.method private createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    goto :goto_0
.end method

.method private extractHeaders(Ljavax/mail/internet/MimeBodyPart;Ljavax/mail/internet/MimeMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p2}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Header;

    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->createKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v2

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    goto :goto_0

    :cond_1
    throw v1
.end method

.method protected makeContentBodyPart(Ljavax/mail/internet/MimeBodyPart;)Ljavax/mail/internet/MimeBodyPart;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljavax/mail/internet/MimeMessage;

    const/4 v3, 0x0

    check-cast v3, Ljavax/mail/Session;

    invoke-direct {v2, v3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Header;

    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v4, "exception saving message state."

    invoke-direct {v3, v4, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Header;

    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method protected makeContentBodyPart(Ljavax/mail/internet/MimeMessage;)Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    :try_start_0
    const-string v2, "Message-Id"

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    const-string v2, "Mime-Version"

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->extractHeaders(Ljavax/mail/internet/MimeBodyPart;Ljavax/mail/internet/MimeMessage;)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->extractHeaders(Ljavax/mail/internet/MimeBodyPart;Ljavax/mail/internet/MimeMessage;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v3, "exception saving message state."

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v3, "exception getting message content."

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
