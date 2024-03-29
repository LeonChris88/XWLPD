.class public Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;
.super Lmyorg/bouncycastle/cms/RecipientInformation;
.source "KeyAgreeRecipientInformation.java"


# instance fields
.field private encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private info:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V
    .locals 12

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/RecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    iput-object p1, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    new-instance v0, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    :try_start_0
    iget-object v0, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getRecipientEncryptedKeys()Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getIdentifier()Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getIssuerAndSerialNumber()Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setIssuer([B)V

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setSerialNumber(Ljava/math/BigInteger;)V

    :goto_0
    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/cms/RecipientEncryptedKey;->getEncryptedKey()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-void

    :cond_0
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;->getRKeyID()Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v10

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getSubjectKeyIdentifier()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid rid in KeyAgreeRecipientInformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateAgreedWrapKey(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->ECMQV_SHA1KDF:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getUserKeyingMaterial()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getEphemeralPublicKey()Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v7

    invoke-direct {p0, p3, v7, p4}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyFromOriginatorPublicKey(Ljava/security/Key;Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;Ljava/security/Provider;)Ljava/security/PublicKey;

    move-result-object v2

    new-instance v4, Lmyorg/bouncycastle/jce/spec/MQVPublicKeySpec;

    invoke-direct {v4, p2, v2}, Lmyorg/bouncycastle/jce/spec/MQVPublicKeySpec;-><init>(Ljava/security/PublicKey;Ljava/security/PublicKey;)V

    new-instance v3, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;

    invoke-direct {v3, p3, p3}, Lmyorg/bouncycastle/jce/spec/MQVPrivateKeySpec;-><init>(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)V

    move-object p3, v3

    move-object p2, v4

    :cond_0
    invoke-static {v0, p4}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v7, 0x1

    invoke-virtual {v1, p2, v7}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v1, p1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v7

    return-object v7
.end method

.method private getPublicKeyFromOriginatorId(Lmyorg/bouncycastle/cms/OriginatorId;Ljava/security/Provider;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lmyorg/bouncycastle/cms/CMSException;

    const-string v1, "No support for \'originator\' as IssuerAndSerialNumber or SubjectKeyIdentifier"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPublicKeyFromOriginatorPublicKey(Ljava/security/Key;Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;Ljava/security/Provider;)Ljava/security/PublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;->getPublicKey()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    iget-object v4, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    return-object v4
.end method

.method private getSenderPublicKey(Ljava/security/Key;Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Ljava/security/Provider;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getOriginatorKey()Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1, p3}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyFromOriginatorPublicKey(Ljava/security/Key;Lmyorg/bouncycastle/asn1/cms/OriginatorPublicKey;Ljava/security/Provider;)Ljava/security/PublicKey;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    new-instance v2, Lmyorg/bouncycastle/cms/OriginatorId;

    invoke-direct {v2}, Lmyorg/bouncycastle/cms/OriginatorId;-><init>()V

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getIssuerAndSerialNumber()Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/cms/OriginatorId;->setIssuer([B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/cms/OriginatorId;->setSerialNumber(Ljava/math/BigInteger;)V

    :goto_1
    invoke-direct {p0, v2, p3}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getPublicKeyFromOriginatorId(Lmyorg/bouncycastle/cms/OriginatorId;Ljava/security/Provider;)Ljava/security/PublicKey;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getSubjectKeyIdentifier()Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/cms/OriginatorId;->setSubjectKeyIdentifier([B)V

    goto :goto_1
.end method

.method private unwrapSessionKey(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Ljava/security/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getActiveAlgID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->encryptedKey:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v1, v4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getContentStream(Ljava/security/Key;Ljava/lang/String;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p2}, Lmyorg/bouncycastle/cms/CMSUtils;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getSessionKey(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getContentFromSessionKey(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v1

    return-object v1
.end method

.method protected getSessionKey(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/Key;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v4, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getOriginator()Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->getSenderPublicKey(Ljava/security/Key;Lmyorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Ljava/security/Provider;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast p1, Ljava/security/PrivateKey;

    invoke-direct {p0, v3, v2, p1, p2}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->calculateAgreedWrapKey(Ljava/lang/String;Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-direct {p0, v3, v0, p2}, Lmyorg/bouncycastle/cms/KeyAgreeRecipientInformation;->unwrapSessionKey(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "can\'t find algorithm."

    invoke-direct {v4, v5, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v1

    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "key invalid in message."

    invoke-direct {v4, v5, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_2
    move-exception v1

    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "originator key spec invalid."

    invoke-direct {v4, v5, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_3
    move-exception v1

    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "required padding not supported."

    invoke-direct {v4, v5, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_4
    move-exception v1

    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "originator key invalid."

    invoke-direct {v4, v5, v1}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
