.class Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;
.super Ljava/lang/Object;
.source "SMIMEEnvelopedGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentEncryptor"
.end annotation


# instance fields
.field private final _content:Ljavax/mail/internet/MimeBodyPart;

.field private final _encryptionOid:Ljava/lang/String;

.field private _firstTime:Z

.field private final _keySize:I

.field private final _provider:Ljava/security/Provider;

.field final synthetic this$0:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)V
    .locals 1

    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_firstTime:Z

    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_content:Ljavax/mail/internet/MimeBodyPart;

    iput-object p3, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_encryptionOid:Ljava/lang/String;

    iput p4, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_keySize:I

    iput-object p5, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-boolean v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_firstTime:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_keySize:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->access$100(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;)Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_encryptionOid:Ljava/lang/String;

    iget-object v4, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_provider:Ljava/security/Provider;

    invoke-virtual {v2, p1, v3, v4}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Ljava/security/Provider;)Ljava/io/OutputStream;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_firstTime:Z

    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_content:Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->access$200(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/activation/DataHandler;->setCommandMap(Ljavax/activation/CommandMap;)V

    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_content:Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v2, v1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->access$100(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;)Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_encryptionOid:Ljava/lang/String;

    iget v4, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_keySize:I

    iget-object v5, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_provider:Ljava/security/Provider;

    invoke-virtual {v2, p1, v3, v4, v5}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;ILjava/security/Provider;)Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->access$100(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;)Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;->_provider:Ljava/security/Provider;

    invoke-virtual {v2, p1, v3}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->regenerate(Ljava/io/OutputStream;Ljava/security/Provider;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmyorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/CMSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
