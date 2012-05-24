.class public Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
.super Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;
.source "SMIMESignedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;,
        Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;
    }
.end annotation


# static fields
.field public static final DIGEST_GOST3411:Ljava/lang/String;

.field public static final DIGEST_MD5:Ljava/lang/String;

.field public static final DIGEST_RIPEMD128:Ljava/lang/String;

.field public static final DIGEST_RIPEMD160:Ljava/lang/String;

.field public static final DIGEST_RIPEMD256:Ljava/lang/String;

.field public static final DIGEST_SHA1:Ljava/lang/String;

.field public static final DIGEST_SHA224:Ljava/lang/String;

.field public static final DIGEST_SHA256:Ljava/lang/String;

.field public static final DIGEST_SHA384:Ljava/lang/String;

.field public static final DIGEST_SHA512:Ljava/lang/String;

.field public static final ENCRYPTION_DSA:Ljava/lang/String;

.field public static final ENCRYPTION_ECDSA:Ljava/lang/String;

.field public static final ENCRYPTION_ECGOST3410:Ljava/lang/String;

.field public static final ENCRYPTION_GOST3410:Ljava/lang/String;

.field public static final ENCRYPTION_RSA:Ljava/lang/String;

.field public static final ENCRYPTION_RSA_PSS:Ljava/lang/String;


# instance fields
.field private _attributeCerts:Ljava/util/List;

.field private _certStores:Ljava/util/List;

.field private final _defaultContentTransferEncoding:Ljava/lang/String;

.field private _digests:Ljava/util/Map;

.field private _oldSigners:Ljava/util/List;

.field private _signers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_GOST3411:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_RIPEMD128:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_RIPEMD160:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_RIPEMD256:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_RSA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_RSA_PSS:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_GOST3410:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->ENCRYPTION_ECGOST3410:Ljava/lang/String;

    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v0

    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_certStores:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_oldSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_attributeCerts:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_digests:Ljava/util/Map;

    const-string v0, "7bit"

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_defaultContentTransferEncoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_certStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_attributeCerts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_oldSigners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_defaultContentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;
    .locals 1

    invoke-static {p0}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_digests:Ljava/util/Map;

    return-object p1
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

.method private addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;

    if-eqz v6, :cond_0

    check-cast v5, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;

    invoke-virtual {v5}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getDigestOID()Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "sha1"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v5, Lmyorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v5}, Lmyorg/bouncycastle/cms/SignerInformation;->getDigestAlgOID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "md5"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "sha224"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "sha256"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "sha384"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "sha512"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    sget-object v6, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->DIGEST_GOST3411:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "gostr3411-94"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v6, "unknown"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_a

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v6, v7, :cond_9

    const-string v6, "; micalg=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const-string v6, "; micalg="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    const/16 v6, 0x2c

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_c

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v6, v7, :cond_c

    const/16 v6, 0x22

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    return-void
.end method

.method private make(Ljavax/mail/internet/MimeBodyPart;Ljava/security/Provider;)Ljavax/mail/internet/MimeMultipart;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v4}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    new-instance v5, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6, p2}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljavax/mail/internet/MimeBodyPart;ZLjava/security/Provider;)V

    const-string v6, "application/pkcs7-signature; name=smime.p7s; smime-type=signed-data"

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/pkcs7-signature; name=smime.p7s; smime-type=signed-data"

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Disposition"

    const-string v6, "attachment; filename=\"smime.p7s\""

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Description"

    const-string v6, "S/MIME Cryptographic Signature"

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Transfer-Encoding"

    iget-object v6, p0, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;->encoding:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "signed; protocol=\"application/pkcs7-signature\""

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_oldSigners:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V

    new-instance v3, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    invoke-virtual {v3, v4}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v5, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v6, "exception putting multi-part together."

    invoke-direct {v5, v6, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method


# virtual methods
.method public addCertificatesAndCRLs(Ljava/security/cert/CertStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_certStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v7, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;

    new-instance v0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generate(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Ljavax/mail/internet/MimeMultipart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->makeContentBodyPart(Ljavax/mail/internet/MimeBodyPart;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    invoke-static {p2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->make(Ljavax/mail/internet/MimeBodyPart;Ljava/security/Provider;)Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    return-object v0
.end method
