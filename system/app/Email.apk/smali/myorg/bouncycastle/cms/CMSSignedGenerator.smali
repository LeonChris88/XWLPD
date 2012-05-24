.class public Lmyorg/bouncycastle/cms/CMSSignedGenerator;
.super Ljava/lang/Object;
.source "CMSSignedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSSignedGenerator$SigOutputStream;,
        Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;
    }
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String;

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

.field private static final EC_ALGORITHMS:Ljava/util/Map;

.field public static final ENCRYPTION_DSA:Ljava/lang/String;

.field public static final ENCRYPTION_ECDSA:Ljava/lang/String;

.field private static final ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

.field private static final ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

.field private static final ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

.field private static final ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

.field private static final ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

.field public static final ENCRYPTION_ECGOST3410:Ljava/lang/String;

.field public static final ENCRYPTION_GOST3410:Ljava/lang/String;

.field public static final ENCRYPTION_RSA:Ljava/lang/String;

.field public static final ENCRYPTION_RSA_PSS:Ljava/lang/String;

.field private static final NO_PARAMS:Ljava/util/Set;


# instance fields
.field protected _certs:Ljava/util/List;

.field protected _crls:Ljava/util/List;

.field protected _digests:Ljava/util/Map;

.field protected _signers:Ljava/util/List;

.field protected final rand:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DATA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_MD5:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_GOST3411:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_RIPEMD128:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_RIPEMD160:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_RIPEMD256:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA_PSS:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_GOST3410:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECGOST3410:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    sget-object v2, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA224:Ljava/lang/String;

    sget-object v2, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA224:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA256:Ljava/lang/String;

    sget-object v2, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA256:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA384:Ljava/lang/String;

    sget-object v2, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA384:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA512:Ljava/lang/String;

    sget-object v2, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECDSA_WITH_SHA512:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_digests:Ljava/util/Map;

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->rand:Ljava/security/SecureRandom;

    return-void
.end method

.method static getSignerIdentifier(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 5

    :try_start_0
    invoke-static {p0}, Lmyorg/bouncycastle/cms/CMSUtils;->getTBSCertificateStructure(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v1, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V

    new-instance v3, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-direct {v3, v1}, Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t extract TBS structure from this cert"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public addAttributeCertificates(Lmyorg/bouncycastle/x509/X509Store;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lmyorg/bouncycastle/x509/X509Store;->getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    iget-object v3, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    new-instance v4, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-interface {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lmyorg/bouncycastle/cms/CMSException;

    const-string v4, "error processing attribute certs"

    invoke-direct {v3, v4, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v3, Lmyorg/bouncycastle/cms/CMSException;

    const-string v4, "error processing attribute certs"

    invoke-direct {v3, v4, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_0
    return-void
.end method

.method public addCertificatesAndCRLs(Ljava/security/cert/CertStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    invoke-static {p1}, Lmyorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Ljava/security/cert/CertStore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    invoke-static {p1}, Lmyorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Ljava/security/cert/CertStore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSigners(Lmyorg/bouncycastle/cms/SignerInformationStore;)V
    .locals 3

    invoke-virtual {p1}, Lmyorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getAttributeSet(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBaseParameters(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "digestAlgID"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "digest"

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getEncAlgorithmIdentifier(Ljava/lang/String;Ljava/security/Signature;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->NO_PARAMS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA_PSS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/security/Signature;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method protected getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v1, :cond_0

    const-string v1, "RSA"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_RSA:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    instance-of v1, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v1, :cond_3

    const-string v1, "DSA"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_DSA:Ljava/lang/String;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->DIGEST_SHA1:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t mix DSA with anything but SHA1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v1, "ECDSA"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "EC"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->EC_ALGORITHMS:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t mix ECDSA with anything but SHA family digests"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    instance-of v1, p1, Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;

    if-nez v1, :cond_7

    const-string v1, "GOST3410"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_GOST3410:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "ECGOST3410"

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->ENCRYPTION_ECGOST3410:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGeneratedDigests()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_digests:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
