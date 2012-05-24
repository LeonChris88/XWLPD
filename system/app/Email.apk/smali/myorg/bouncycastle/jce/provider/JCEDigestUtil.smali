.class Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;
.super Ljava/lang/Object;
.source "JCEDigestUtil.java"


# static fields
.field private static md5:Ljava/util/Set;

.field private static oids:Ljava/util/Map;

.field private static sha1:Ljava/util/Set;

.field private static sha224:Ljava/util/Set;

.field private static sha256:Ljava/util/Set;

.field private static sha384:Ljava/util/Set;

.field private static sha512:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->md5:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha1:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha224:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha384:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha512:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->md5:Ljava/util/Set;

    const-string v1, "MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->md5:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha1:Ljava/util/Set;

    const-string v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha1:Ljava/util/Set;

    const-string v1, "SHA-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha1:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha224:Ljava/util/Set;

    const-string v1, "SHA224"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha224:Ljava/util/Set;

    const-string v1, "SHA-224"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha224:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha256:Ljava/util/Set;

    const-string v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha256:Ljava/util/Set;

    const-string v1, "SHA-256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha256:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha384:Ljava/util/Set;

    const-string v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha384:Ljava/util/Set;

    const-string v1, "SHA-384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha384:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha512:Ljava/util/Set;

    const-string v1, "SHA512"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha512:Ljava/util/Set;

    const-string v1, "SHA-512"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha512:Ljava/util/Set;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "MD5"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA1"

    sget-object v2, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA-1"

    sget-object v2, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA224"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA-224"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA256"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA-256"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA384"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA-384"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA512"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    const-string v1, "SHA-512"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    sget-object v1, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDigest(Ljava/lang/String;)Lmyorg/bouncycastle/crypto/Digest;
    .locals 1

    invoke-static {p0}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    goto :goto_0

    :cond_1
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    goto :goto_0

    :cond_2
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    goto :goto_0

    :cond_3
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    :cond_4
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->oids:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method static isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha224:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha256:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha384:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->sha512:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lmyorg/bouncycastle/jce/provider/JCEDigestUtil;->md5:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
