.class public abstract Lmyorg/bouncycastle/cms/RecipientInformation;
.super Ljava/lang/Object;
.source "RecipientInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;
    }
.end annotation


# instance fields
.field protected authEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected data:Ljava/io/InputStream;

.field protected encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected macAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private macStream:Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;

.field protected rid:Lmyorg/bouncycastle/cms/RecipientId;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    iput-object p1, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->macAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->authEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p4, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p5, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->data:Ljava/io/InputStream;

    return-void
.end method

.method private static createMacInputStream(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljava/io/InputStream;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    sget-object v0, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getMac(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_0

    instance-of v2, v0, Lmyorg/bouncycastle/asn1/ASN1Null;

    if-nez v2, :cond_0

    sget-object v2, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAlgorithmParameters(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    const-string v3, "ASN.1"

    invoke-virtual {v2, v0, v3}, Ljava/security/AlgorithmParameters;->init([BLjava/lang/String;)V

    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    new-instance v0, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;

    invoke-direct {v0, v1, p2}, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;-><init>(Ljavax/crypto/Mac;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_0
.end method


# virtual methods
.method getActiveAlgID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->macAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->macAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->authEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0
.end method

.method protected getContentFromSessionKey(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->data:Ljava/io/InputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v7, v4, p2}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getSymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/asn1/ASN1Object;

    if-eqz v6, :cond_4

    instance-of v7, v6, Lmyorg/bouncycastle/asn1/ASN1Null;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v7, :cond_4

    :try_start_1
    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAlgorithmParameters(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v5

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v7

    const-string v8, "ASN.1"

    invoke-virtual {v5, v7, v8}, Ljava/security/AlgorithmParameters;->init([BLjava/lang/String;)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    :try_start_2
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v1, v2

    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->macAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->macAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v7, p1, v1, p2}, Lmyorg/bouncycastle/cms/RecipientInformation;->createMacInputStream(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljava/io/InputStream;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->macStream:Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;

    :cond_1
    iget-object v7, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->authEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v7, :cond_7

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "AuthEnveloped data decryption not yet implemented"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :catch_0
    move-exception v3

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "can\'t find algorithm."

    invoke-direct {v7, v8, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_1
    move-exception v3

    :try_start_3
    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES128_CBC:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES192_CBC:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->AES256_CBC:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const/4 v7, 0x2

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v7, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    :catch_2
    move-exception v3

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "key invalid in message."

    invoke-direct {v7, v8, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_3
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_3
    move-exception v3

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "required padding not supported."

    invoke-direct {v7, v8, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_4
    :try_start_5
    sget-object v7, Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->DES_EDE3_CBC:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "1.2.840.113533.7.66.10"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const/4 v7, 0x2

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v9, 0x8

    new-array v9, v9, [B

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v7, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    :catch_4
    move-exception v3

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "algorithm parameters invalid."

    invoke-direct {v7, v8, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_6
    const/4 v7, 0x2

    :try_start_6
    invoke-virtual {v0, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_5
    move-exception v3

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "MAC algorithm parameter spec invalid."

    invoke-direct {v7, v8, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_7
    :try_start_7
    new-instance v7, Lmyorg/bouncycastle/cms/CMSTypedStream;

    invoke-direct {v7, v1}, Lmyorg/bouncycastle/cms/CMSTypedStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    return-object v7

    :catch_6
    move-exception v3

    new-instance v7, Lmyorg/bouncycastle/cms/CMSException;

    const-string v8, "error decoding algorithm parameters."

    invoke-direct {v7, v8, v3}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

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

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/RecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public getRID()Lmyorg/bouncycastle/cms/RecipientId;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    return-object v0
.end method
