.class public Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;
.super Lmyorg/bouncycastle/cms/RecipientInformation;
.source "KeyTransRecipientInformation.java"


# instance fields
.field private info:Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V
    .locals 10

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/RecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    iput-object p1, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    new-instance v0, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getRecipientIdentifier()Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v9

    :try_start_0
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setSubjectKeyIdentifier([B)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v7

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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid rid in KeyTransRecipientInformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getExchangeEncryptionAlgorithmName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RSA/ECB/PKCS1Padding"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

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

    invoke-virtual {p0, p1, p2}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getSessionKey(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getContentFromSessionKey(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v1

    return-object v1
.end method

.method protected getSessionKey(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/Key;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getEncryptedKey()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getExchangeEncryptionAlgorithmName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/KeyTransRecipientInformation;->getActiveAlgID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getSymmetricCipherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v7, v5, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getSymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v4

    const/4 v7, 0x4

    :try_start_1
    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v7, 0x3

    invoke-virtual {v4, v3, v1, v7}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v2

    const/4 v7, 0x2

    :try_start_2
    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v7, 0x2

    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const/4 v7, 0x2

    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v2

    const/4 v7, 0x2

    invoke-virtual {v4, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_0

    :catch_4
    move-exception v2

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "can\'t find algorithm."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_5
    move-exception v2

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "key invalid in message."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_6
    move-exception v2

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "required padding not supported."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_7
    move-exception v2

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "illegal blocksize in message."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_8
    move-exception v2

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "bad padding in message."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method
