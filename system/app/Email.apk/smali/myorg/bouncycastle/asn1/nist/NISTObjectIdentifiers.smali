.class public interface abstract Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;
.super Ljava/lang/Object;
.source "NISTObjectIdentifiers.java"


# static fields
.field public static final dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dsa_with_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dsa_with_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes128_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes128_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes128_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes128_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes128_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes128_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes192_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes192_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes192_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes192_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes192_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes192_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes256_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes256_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes256_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes256_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes256_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_aes256_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_dsa_with_sha2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.2.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.5"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.6"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.21"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.22"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.23"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.24"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.25"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.26"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.27"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.41"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.42"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.43"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.44"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.45"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.46"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.1.47"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.101.3.4.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
