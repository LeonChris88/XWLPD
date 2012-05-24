.class Lmyorg/bouncycastle/ocsp/OCSPUtil;
.super Ljava/lang/Object;
.source "OCSPUtil.java"


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static oids:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256WITHRSAENCRYPTION"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256WITHRSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "DSAWITHSHA1"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHECDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "ECDSAWITHSHA1"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHECDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHECDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHECDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHECDSA"

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410"

    sget-object v2, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->algorithms:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410-94"

    sget-object v2, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "MD2WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "MD5WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA1WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA224WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA256WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA384WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA512WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "RIPEMD160WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "RIPEMD128WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "RIPEMD256WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA1WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA224WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA256WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA1WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA224WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA256WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA384WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA512WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->oids:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GOST3411WITHGOST3410"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/ocsp/OCSPUtil;->noParams:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
