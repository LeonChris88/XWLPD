.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "KeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$MQVwithSHA1KDF;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DHwithSHA1KDF;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$MQV;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DHC;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement$DH;
    }
.end annotation


# static fields
.field private static final algorithms:Ljava/util/Hashtable;

.field private static final converter:Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field private agreement:Lmyorg/bouncycastle/crypto/BasicAgreement;

.field private kaAlgorithm:Ljava/lang/String;

.field private kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

.field private parameters:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

.field private result:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v3, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    const/16 v3, 0xc0

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/BasicAgreement;Lmyorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lmyorg/bouncycastle/crypto/BasicAgreement;

    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 3

    sget-object v0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    sget-object v1, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lmyorg/bouncycastle/math/ec/ECFieldElement;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initFromKey(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lmyorg/bouncycastle/crypto/BasicAgreement;

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for initialisation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getStaticPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    const/4 v2, 0x0

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    :cond_1
    new-instance v3, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-direct {v3, v0, v1, v2}, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lmyorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v0, v3}, Lmyorg/bouncycastle/crypto/BasicAgreement;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-void

    :cond_2
    instance-of v0, p1, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;

    if-nez v0, :cond_3

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for initialisation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lmyorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1, v0}, Lmyorg/bouncycastle/crypto/BasicAgreement;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be between two parties."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lmyorg/bouncycastle/crypto/BasicAgreement;

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lmyorg/bouncycastle/jce/interfaces/MQVPublicKey;

    if-nez v0, :cond_2

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/jce/interfaces/MQVPublicKey;

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for doPhase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p1, Lmyorg/bouncycastle/jce/interfaces/MQVPublicKey;

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/MQVPublicKey;->getStaticKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {p1}, Lmyorg/bouncycastle/jce/interfaces/MQVPublicKey;->getEphemeralKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;

    invoke-direct {v2, v0, v1}, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lmyorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v1, v0}, Lmyorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    const/4 v0, 0x0

    return-object v0

    :cond_3
    instance-of v0, p1, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-nez v0, :cond_4

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key agreement requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for doPhase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    goto :goto_0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->engineGenerateSecret()[B

    move-result-object v0

    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key agreement: need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    if-eqz v4, :cond_1

    sget-object v4, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown algorithm encountered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v4, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    new-instance v4, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v4, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v1, v3}, Lmyorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;I[B)V

    div-int/lit8 v4, v1, 0x8

    new-array v0, v4, [B

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v4, v2}, Lmyorg/bouncycastle/crypto/DerivationFunction;->init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-interface {v4, v0, v5, v6}, Lmyorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    move-object v3, v0

    :cond_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lmyorg/bouncycastle/crypto/DerivationFunction;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KDF can only be used when algorithm is known"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->initFromKey(Ljava/security/Key;)V

    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyAgreement;->initFromKey(Ljava/security/Key;)V

    return-void
.end method
