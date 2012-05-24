.class public Lcom/android/emailcommon/smime/SMIMEHelper;
.super Ljava/lang/Object;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;,
        Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;,
        Lcom/android/emailcommon/smime/SMIMEHelper$Message;,
        Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    }
.end annotation


# static fields
.field private static CRLF_ENDLINE:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHMS:[Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

.field public static final ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

.field public static final SIGNING_ALGORITHMS:[Ljava/lang/String;

.field public static final SIGNING_ALGORITHM_MD5:Ljava/lang/String;

.field public static final SIGNING_ALGORITHM_SHA:Ljava/lang/String;

.field private static final SMIME_PROVIDER_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mMailcapInitDone:Z

.field private static mProviderRegistered:Z


# instance fields
.field private mProps:Ljava/util/Properties;

.field private mSession:Ljavax/mail/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_SHA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_MD5:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_SHA:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHM_MD5:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilities;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHMS:[Ljava/lang/String;

    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    const-string v0, "\r\n"

    sput-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->CRLF_ENDLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mProps:Ljava/util/Properties;

    iget-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mProps:Ljava/util/Properties;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    invoke-direct {p0}, Lcom/android/emailcommon/smime/SMIMEHelper;->registerProviderIfNecessary()V

    return-void
.end method

.method private checkAttachment(Ljavax/mail/BodyPart;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "p7m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "p7s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private createMimeBodyPart(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Ljavax/mail/internet/MimeBodyPart;
    .locals 13

    const/4 v8, 0x0

    :try_start_0
    new-instance v2, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    iget-boolean v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    if-eqz v10, :cond_3

    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/smime/SMIMEHelper;->validateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    :goto_0
    iget-boolean v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    if-eqz v10, :cond_4

    const-string v10, "text/html; charset=\"utf-8\""

    :goto_1
    invoke-virtual {v2, v11, v10}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v7, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v7}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_5

    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    iget-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mUri:Landroid/net/Uri;

    iget-object v11, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/smime/UriSchemaUtils;->getFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v10, v5, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    if-nez v10, :cond_0

    iget v10, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    :cond_0
    const-string v10, "inline"

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->setContentID(Ljava/lang/String;)V

    :cond_1
    iget-object v10, v5, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/lang/String;)V

    const-string v10, "X-MS-UrlCompName"

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v10, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/smime/SMIMEHelper;->validateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto/16 :goto_0

    :cond_4
    const-string v10, "text/plain; charset=utf-8"

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    new-instance v9, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v9}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    invoke-virtual {v9, v7}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    :cond_6
    move-object v8, v2

    :goto_3
    return-object v8

    :catch_0
    move-exception v4

    sget-object v10, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private encryptMimeBodyPart(Ljavax/mail/internet/MimeBodyPart;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .locals 9

    const/4 v5, 0x0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-direct {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_0

    aget-object v6, p2, v3

    invoke-virtual {v1, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->addKeyTransRecipient(Ljava/security/cert/X509Certificate;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/android/emailcommon/smime/SMIMEHelper;->getKeySize(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v4, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;ILjava/lang/String;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    :goto_1
    move-object v5, v0

    :goto_2
    return-object v5

    :cond_1
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private encryptMimeMessage(Ljavax/mail/internet/MimeMessage;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    .locals 9

    const/4 v5, 0x0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-direct {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_0

    aget-object v6, p2, v3

    invoke-virtual {v1, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->addKeyTransRecipient(Ljava/security/cert/X509Certificate;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/android/emailcommon/smime/SMIMEHelper;->getKeySize(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v4, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;ILjava/lang/String;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    :goto_1
    move-object v5, v0

    :goto_2
    return-object v5

    :cond_1
    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v6}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;->generate(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmyorg/bouncycastle/mail/smime/SMIMEException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v6, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception caught: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getKeySize(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x28

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x40

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x80

    goto :goto_0
.end method

.method private static getStores(Lmyorg/bouncycastle/mail/smime/SMIMESigned;)Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;

    const-string v1, "Collection"

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getCertificatesAndCRLs(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getSignerInfos()Lmyorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;-><init>(Ljava/security/cert/CertStore;Lmyorg/bouncycastle/cms/SignerInformationStore;)V

    return-object v0
.end method

.method private handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    new-instance v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;-><init>()V

    const-string v1, "X-MS-UrlCompName"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getSize()I

    move-result v1

    iput v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mSize:I

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    aget-object v1, v1, v0

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mEncoding:Ljava/lang/String;

    :cond_1
    const-string v1, "Content-ID"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "Content-ID"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    :cond_2
    const-string v1, "Content-Disposition"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "Content-Disposition"

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_6

    aget-object v4, v1, v0

    const-string v5, "inline"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v6, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    aget-object v1, v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iput-object p1, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mAttachmentBody:Ljavax/mail/BodyPart;

    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    const-string v2, "pkcs7-signature"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;-><init>(Ljavax/mail/internet/MimeMultipart;)V

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    invoke-static {v0, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->verify(Lmyorg/bouncycastle/mail/smime/SMIMESigned;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleMultipart(Ljavax/mail/Multipart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->checkAttachment(Ljavax/mail/BodyPart;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    iget-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    if-eqz v0, :cond_4

    iput-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iput-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v1, "signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "SMIMEHelper"

    const-string v1, "Signature found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "signed-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMESigned;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;-><init>(Ljavax/mail/Part;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/mail/smime/SMIMESigned;->getContent()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    invoke-static {v0, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->verify(Lmyorg/bouncycastle/mail/smime/SMIMESigned;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_7
    const-string v1, "enveloped-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;

    invoke-virtual {p1}, Ljavax/mail/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v0

    invoke-virtual {v0, p4}, Lmyorg/bouncycastle/cms/RecipientInformationStore;->get(Lmyorg/bouncycastle/cms/RecipientId;)Lmyorg/bouncycastle/cms/RecipientInformation;

    move-result-object v0

    :try_start_2
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lmyorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->checkAttachment(Ljavax/mail/BodyPart;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->checkAttachment(Ljavax/mail/BodyPart;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleAttachment(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    goto/16 :goto_1
.end method

.method private handleMultipart(Ljavax/mail/Multipart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs joinAddresses([[Ljavax/mail/Address;)[Ljavax/mail/Address;
    .locals 6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljavax/mail/Address;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavax/mail/Address;

    return-object v5
.end method

.method private static readSignerAndCertificates(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mCertStore:Ljava/security/cert/CertStore;

    iget-object v9, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mSignerInformationStore:Lmyorg/bouncycastle/cms/SignerInformationStore;

    invoke-virtual {v9}, Lmyorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v10

    new-array v10, v10, [Lmyorg/bouncycastle/cms/SignerInformation;

    iput-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    iget-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    array-length v10, v10

    new-array v10, v10, [Ljava/security/cert/X509Certificate;

    iput-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmyorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v8}, Lmyorg/bouncycastle/cms/SignerInformation;->getSID()Lmyorg/bouncycastle/cms/SignerId;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v2

    iget-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    aput-object v8, v10, v5

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    iget-object v10, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    add-int/lit8 v6, v5, 0x1

    aput-object v1, v10, v5

    move v5, v6

    :cond_0
    return-void
.end method

.method private registerProviderIfNecessary()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-boolean v4, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    :cond_1
    sget-boolean v2, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    if-nez v2, :cond_2

    new-instance v2, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lmyorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    sput-boolean v4, Lcom/android/emailcommon/smime/SMIMEHelper;->mProviderRegistered:Z

    :cond_2
    invoke-static {}, Lcom/android/emailcommon/smime/SMIMEHelper;->setDefaultMailcap()V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static setDefaultMailcap()V
    .locals 2

    sget-boolean v1, Lcom/android/emailcommon/smime/SMIMEHelper;->mMailcapInitDone:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    const-string v1, "text/plain;; x-java-content-handler=gnu.mail.handler.TextPlain"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "text/html;; x-java-content-handler=gnu.mail.handler.TextHtml"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "text/xml;; x-java-content-handler=gnu.mail.handler.TextXml"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "multipart/mixed;; x-java-content-handler=gnu.mail.handler.MultipartMixed"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "message/rfc822;; x-java-content-handler=gnu.mail.handler.MessageRFC822"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "multipart/alternative;; x-java-content-handler=gnu.mail.handler.MultipartAlternative"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "application/octet-stream;; x-java-content-handler=gnu.mail.handler.ApplicationOctetStream"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

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

    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/emailcommon/smime/SMIMEHelper;->mMailcapInitDone:Z

    goto :goto_0
.end method

.method private setMessage(Ljavax/mail/internet/MimeMessage;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V
    .locals 4

    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V
    :try_end_1
    .catch Ljavax/mail/internet/AddressException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    if-eqz v0, :cond_2

    :try_start_2
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_2
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    if-eqz v0, :cond_3

    :try_start_3
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_3
    .catch Ljavax/mail/internet/AddressException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_3
    :goto_3
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mReplyTo:[Ljavax/mail/Address;

    if-eqz v0, :cond_4

    :try_start_4
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mReplyTo:[Ljavax/mail/Address;

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setReplyTo([Ljavax/mail/Address;)V
    :try_end_4
    .catch Ljavax/mail/internet/AddressException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_4
    :goto_4
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_5

    :try_start_5
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_a

    :cond_5
    :goto_5
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mMessageID:Ljava/lang/String;

    if-eqz v0, :cond_6

    :try_start_6
    const-string v0, "Message-ID"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mMessageID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_b

    :cond_6
    :goto_6
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    iget-object v2, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDate:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :try_start_7
    const-string v1, "Date"

    invoke-virtual {p1, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_c

    :cond_7
    :goto_7
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    if-eqz v0, :cond_9

    :try_start_8
    iget-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDelivery:Z

    if-eqz v0, :cond_8

    const-string v0, "Return-Receipt-To"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-boolean v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mRead:Z

    if-eqz v0, :cond_9

    const-string v0, "Disposition-Notification-To"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_d

    :cond_9
    :goto_8
    iget-object v0, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mImportance:Ljava/lang/String;

    if-eqz v0, :cond_a

    :try_start_9
    const-string v0, "Importance"

    iget-object v1, p2, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mImportance:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_e

    :cond_a
    :goto_9
    :try_start_a
    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljavax/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_f

    :goto_a
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_3
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_4
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_5
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_7
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/AddressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_9
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_b
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_c
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_8

    :catch_e
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_a
.end method

.method private signMimeMessage(Ljavax/mail/internet/MimeBodyPart;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;
    .locals 16

    const/4 v13, 0x0

    :try_start_0
    new-instance v8, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;

    invoke-direct {v8}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v2}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v8, v2}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/16 v3, 0x80

    invoke-virtual {v8, v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I)V

    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/16 v3, 0x40

    invoke-virtual {v8, v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I)V

    sget-object v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/16 v3, 0x28

    invoke-virtual {v8, v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;->addCapability(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I)V

    new-instance v7, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute;

    new-instance v3, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v5, Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual/range {p3 .. p3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-virtual {v7, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilitiesAttribute;

    invoke-direct {v2, v8}, Lmyorg/bouncycastle/asn1/smime/SMIMECapabilitiesAttribute;-><init>(Lmyorg/bouncycastle/asn1/smime/SMIMECapabilityVector;)V

    invoke-virtual {v7, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    invoke-direct {v1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;-><init>()V

    move-object/from16 v4, p4

    if-nez v4, :cond_0

    const-string v2, "DSA"

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v4, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    :cond_0
    :goto_0
    new-instance v5, Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v5, v7}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Collection"

    new-instance v3, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v3, v9}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v10

    invoke-virtual {v1, v10}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addCertificatesAndCRLs(Ljava/security/cert/CertStore;)V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v12

    const/4 v2, 0x0

    invoke-static {v12, v2}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v14

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v15

    move-object v13, v15

    :goto_1
    return-object v13

    :cond_1
    sget-object v4, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private tryAsn1(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .locals 5

    const-string v0, "SMIMEHelper"

    const-string v1, "tryAsn1() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v2

    invoke-virtual {v2, p4}, Lmyorg/bouncycastle/cms/RecipientInformationStore;->get(Lmyorg/bouncycastle/cms/RecipientId;)Lmyorg/bouncycastle/cms/RecipientInformation;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v2, p2, v3}, Lmyorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    move-result-object v2

    invoke-direct {p0, v2, p5, p2, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    const-string v1, "SMIMEHelper"

    const-string v2, "tryAsn1() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_1
    :try_start_3
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    const-string v3, "Message is not ASN.1 formatted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private tryImf(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .locals 6

    const/4 v3, 0x0

    const-string v0, "SMIMEHelper"

    const-string v1, "tryImf() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v1

    new-instance v2, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v3, v1, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;

    invoke-direct {v1, v3}, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;-><init>(Ljavax/mail/internet/MimeMessage;)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnveloped;->getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v1

    invoke-virtual {v1, p4}, Lmyorg/bouncycastle/cms/RecipientInformationStore;->get(Lmyorg/bouncycastle/cms/RecipientId;)Lmyorg/bouncycastle/cms/RecipientInformation;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v1, p2, v3}, Lmyorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    move-result-object v1

    invoke-direct {p0, v1, p5, p2, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    const-string v2, "tryImf() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_3
    sget-object v3, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private tryOtherFormat(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    invoke-direct {p0, v3, p5, p2, p4}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private static validateText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->CRLF_ENDLINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->CRLF_ENDLINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static verify(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->readSignerAndCertificates(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->SMIME_PROVIDER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lmyorg/bouncycastle/cms/SignerInformation;->verify(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static verify(Lmyorg/bouncycastle/mail/smime/SMIMESigned;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/emailcommon/smime/SMIMEHelper;->getStores(Lmyorg/bouncycastle/mail/smime/SMIMESigned;)Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/emailcommon/smime/SMIMEHelper;->verify(Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public decryptMessage(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v4, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v4}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/cms/RecipientId;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/cms/RecipientId;->setIssuer([B)V

    new-instance v5, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v5}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->tryAsn1(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMIMEHelper"

    const-string v1, "IMF message - decrypted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->tryImf(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SMIMEHelper"

    const-string v1, "ASN1 message - decrypted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v5, v6

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->tryOtherFormat(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/cms/RecipientId;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public encryptMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;ZLjava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V
    .locals 20

    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    const-string v17, "encryptMessage() start"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v10, 0x0

    if-nez p4, :cond_0

    :try_start_0
    sget-object p4, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->createMimeBodyPart(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p5

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->signMimeMessage(Ljavax/mail/internet/MimeBodyPart;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v15

    new-instance v14, Ljavax/mail/internet/MimeMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    invoke-virtual {v14, v15}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p4

    invoke-direct {v0, v14, v1, v2}, Lcom/android/emailcommon/smime/SMIMEHelper;->encryptMimeMessage(Ljavax/mail/internet/MimeMessage;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    :cond_1
    new-instance v13, Ljava/io/PipedOutputStream;

    invoke-direct {v13}, Ljava/io/PipedOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    new-instance v11, Ljava/io/PipedInputStream;

    const/16 v16, 0x2000

    move/from16 v0, v16

    invoke-direct {v11, v13, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    :try_start_2
    new-instance v16, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v6, v13, v2}, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;-><init>(Lcom/android/emailcommon/smime/SMIMEHelper;Ljavax/mail/internet/MimeBodyPart;Ljava/io/PipedOutputStream;I)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->start()V

    new-instance v5, Ljavax/mail/internet/EASMIMEMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    move-object/from16 v16, v0

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v0, v11, v1}, Ljavax/mail/internet/EASMIMEMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/emailcommon/smime/SMIMEHelper;->setMessage(Ljavax/mail/internet/MimeMessage;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    if-eqz v11, :cond_2

    :try_start_3
    invoke-virtual {v11}, Ljava/io/PipedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_0
    if-eqz v13, :cond_9

    :try_start_4
    invoke-virtual {v13}, Ljava/io/PipedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v10, v11

    move-object v12, v13

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p4

    invoke-direct {v0, v8, v1, v2}, Lcom/android/emailcommon/smime/SMIMEHelper;->encryptMimeBodyPart(Ljavax/mail/internet/MimeBodyPart;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeBodyPart;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v6

    if-nez v6, :cond_1

    if-eqz v10, :cond_5

    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_2
    if-eqz v12, :cond_3

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    move-object v12, v13

    goto :goto_1

    :catch_4
    move-exception v9

    :goto_3
    :try_start_8
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - Runtime.getRuntime().freeMemory() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - Runtime.getRuntime().maxMemory() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - Runtime.getRuntime().totalMemory() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - getNativeHeapAllocatedSize : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - getNativeHeapFreeSize : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "After - getNativeHeapSize : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception caught in encryptMessage() :  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v10, :cond_6

    :try_start_9
    invoke-virtual {v10}, Ljava/io/PipedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_6
    :goto_5
    if-eqz v12, :cond_7

    :try_start_a
    invoke-virtual {v12}, Ljava/io/PipedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_7
    :goto_6
    throw v16

    :catch_5
    move-exception v7

    :goto_7
    :try_start_b
    sget-object v16, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception caught: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v10, :cond_8

    :try_start_c
    invoke-virtual {v10}, Ljava/io/PipedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_8
    :goto_8
    if-eqz v12, :cond_3

    :try_start_d
    invoke-virtual {v12}, Ljava/io/PipedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_8
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_9
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v16

    move-object v12, v13

    goto :goto_4

    :catchall_2
    move-exception v16

    move-object v10, v11

    move-object v12, v13

    goto :goto_4

    :catch_a
    move-exception v7

    move-object v12, v13

    goto :goto_7

    :catch_b
    move-exception v7

    move-object v10, v11

    move-object v12, v13

    goto :goto_7

    :catch_c
    move-exception v9

    move-object v12, v13

    goto/16 :goto_3

    :catch_d
    move-exception v9

    move-object v10, v11

    move-object v12, v13

    goto/16 :goto_3

    :cond_9
    move-object v10, v11

    move-object v12, v13

    goto/16 :goto_1
.end method

.method public parseSignedMessage(Ljava/io/InputStream;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v3}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parseSignedMessage(Ljava/io/InputStream;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v2}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmyorg/bouncycastle/cms/RecipientId;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lmyorg/bouncycastle/cms/RecipientId;->setIssuer([B)V

    new-instance v4, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v4}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, v4, p2, v2}, Lcom/android/emailcommon/smime/SMIMEHelper;->handleBodyPart(Ljavax/mail/BodyPart;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Lmyorg/bouncycastle/cms/RecipientId;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public signMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->createMimeBodyPart(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/emailcommon/smime/SMIMEHelper;->signMimeMessage(Ljavax/mail/internet/MimeBodyPart;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Ljavax/mail/internet/MimeMessage;

    iget-object v4, p0, Lcom/android/emailcommon/smime/SMIMEHelper;->mSession:Ljavax/mail/Session;

    invoke-direct {v2, v4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    invoke-direct {p0, v2, p2}, Lcom/android/emailcommon/smime/SMIMEHelper;->setMessage(Ljavax/mail/internet/MimeMessage;Lcom/android/emailcommon/smime/SMIMEHelper$Message;)V

    :try_start_0
    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    invoke-virtual {v2, p6}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/emailcommon/smime/SMIMEHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
