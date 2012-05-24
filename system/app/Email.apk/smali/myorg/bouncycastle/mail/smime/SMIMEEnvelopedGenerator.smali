.class public Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;
.super Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;
.source "SMIMEEnvelopedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$1;,
        Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$WrappingIOException;,
        Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;,
        Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;
    }
.end annotation


# static fields
.field public static final AES128_CBC:Ljava/lang/String;

.field public static final AES128_WRAP:Ljava/lang/String;

.field public static final AES192_CBC:Ljava/lang/String;

.field public static final AES256_CBC:Ljava/lang/String;

.field public static final AES256_WRAP:Ljava/lang/String;

.field public static final CAMELLIA128_CBC:Ljava/lang/String;

.field public static final CAMELLIA128_WRAP:Ljava/lang/String;

.field public static final CAMELLIA192_CBC:Ljava/lang/String;

.field public static final CAMELLIA192_WRAP:Ljava/lang/String;

.field public static final CAMELLIA256_CBC:Ljava/lang/String;

.field public static final CAMELLIA256_WRAP:Ljava/lang/String;

.field public static final DES_EDE3_CBC:Ljava/lang/String;

.field public static final DES_EDE3_WRAP:Ljava/lang/String;

.field public static final ECDH_SHA1KDF:Ljava/lang/String;

.field public static final RC2_CBC:Ljava/lang/String;

.field public static final SEED_CBC:Ljava/lang/String;

.field public static final SEED_WRAP:Ljava/lang/String;


# instance fields
.field private fact:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->RC2_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->RC2_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES128_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->AES128_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES192_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->AES192_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES256_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->AES256_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->CAMELLIA128_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->CAMELLIA128_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->CAMELLIA192_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->CAMELLIA192_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->CAMELLIA256_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->CAMELLIA256_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->SEED_CBC:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->SEED_CBC:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->DES_EDE3_WRAP:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->DES_EDE3_WRAP:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES128_WRAP:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->AES128_WRAP:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES256_WRAP:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->AES256_WRAP:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->CAMELLIA128_WRAP:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->CAMELLIA128_WRAP:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->CAMELLIA192_WRAP:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->CAMELLIA192_WRAP:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->CAMELLIA256_WRAP:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->CAMELLIA256_WRAP:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->SEED_WRAP:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->SEED_WRAP:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->ECDH_SHA1KDF:Ljava/lang/String;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->ECDH_SHA1KDF:Ljava/lang/String;

    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v0

    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$1;)V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->fact:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;

    return-void
.end method

.method static synthetic access$100(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;)Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->fact:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;

    return-object v0
.end method

.method static synthetic access$200(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;
    .locals 1

    invoke-static {p0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v0

    return-object v0
.end method

.method private static addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;
    .locals 2

    move-object v0, p0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    const-string v1, "application/pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "application/pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "application/x-pkcs7-signature;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_signature"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "application/x-pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "multipart/signed;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.multipart_signed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    return-object v0
.end method

.method private make(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-virtual {p0, p2, p4}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    :try_start_0
    new-instance v6, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v6}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$ContentEncryptor;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)V

    const-string v1, "application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data"

    invoke-virtual {v6, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data"

    invoke-virtual {v6, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Disposition"

    const-string v1, "attachment; filename=\"smime.p7m\""

    invoke-virtual {v6, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Description"

    const-string v1, "S/MIME Encrypted Message"

    invoke-virtual {v6, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->encoding:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v7

    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v1, "exception putting multi-part together."

    invoke-direct {v0, v1, v7}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public addKeyTransRecipient(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->fact:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->addKeyTransRecipient(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-static {p4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->makeContentBodyPart(Ljavax/mail/internet/MimeBodyPart;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->make(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->makeContentBodyPart(Ljavax/mail/internet/MimeBodyPart;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->make(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;ILjava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-static {p4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->makeContentBodyPart(Ljavax/mail/internet/MimeMessage;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->make(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v2, "unable to save message"

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-static {p3}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->makeContentBodyPart(Ljavax/mail/internet/MimeMessage;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2, p3}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->make(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/security/Provider;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v2, "unable to save message"

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
