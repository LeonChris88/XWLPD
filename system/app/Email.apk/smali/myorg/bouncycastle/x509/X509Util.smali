.class Lmyorg/bouncycastle/x509/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/x509/X509Util$Implementation;
    }
.end annotation


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static params:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lmyorg/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD2WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD2WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD5WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "MD5WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSAANDMGF1"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSAANDMGF1"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSAANDMGF1"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSAANDMGF1"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSAANDMGF1"

    sget-object v7, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD160WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD160WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD128WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD128WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD256WITHRSAENCRYPTION"

    sget-object v7, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "RIPEMD256WITHRSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "DSAWITHSHA1"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHECDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "ECDSAWITHSHA1"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHECDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHECDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHECDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHECDSA"

    sget-object v7, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHGOST3410"

    sget-object v7, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHGOST3410-94"

    sget-object v7, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHECGOST3410"

    sget-object v7, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHECGOST3410-2001"

    sget-object v7, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->algorithms:Ljava/util/Hashtable;

    const-string v6, "GOST3411WITHGOST3410-2001"

    sget-object v7, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->noParams:Ljava/util/Set;

    sget-object v6, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v0, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v6, "SHA1WITHRSAANDMGF1"

    const/16 v7, 0x14

    invoke-static {v0, v7}, Lmyorg/bouncycastle/x509/X509Util;->creatPSSParams(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v1, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v6, "SHA224WITHRSAANDMGF1"

    const/16 v7, 0x1c

    invoke-static {v1, v7}, Lmyorg/bouncycastle/x509/X509Util;->creatPSSParams(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v2, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v6, "SHA256WITHRSAANDMGF1"

    const/16 v7, 0x20

    invoke-static {v2, v7}, Lmyorg/bouncycastle/x509/X509Util;->creatPSSParams(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v3, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v6, "SHA384WITHRSAANDMGF1"

    const/16 v7, 0x30

    invoke-static {v3, v7}, Lmyorg/bouncycastle/x509/X509Util;->creatPSSParams(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    sget-object v5, Lmyorg/bouncycastle/x509/X509Util;->params:Ljava/util/Hashtable;

    const-string v6, "SHA512WITHRSAANDMGF1"

    const/16 v7, 0x40

    invoke-static {v4, v7}, Lmyorg/bouncycastle/x509/X509Util;->creatPSSParams(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static creatPSSParams(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 5

    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    new-instance v3, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {v0, p0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERInteger;Lmyorg/bouncycastle/asn1/DERInteger;)V

    return-object v0
.end method

.method static getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lmyorg/bouncycastle/x509/X509Util$Implementation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    :goto_1
    new-instance v5, Lmyorg/bouncycastle/x509/X509Util$Implementation;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6, p2}, Lmyorg/bouncycastle/x509/X509Util$Implementation;-><init>(Ljava/lang/Object;Ljava/security/Provider;)V

    return-object v5

    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but no class \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" found!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but class \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" inaccessible!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find implementation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method
