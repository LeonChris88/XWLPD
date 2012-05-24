.class public Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
.super Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "CMSEnvelopedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
    }
.end annotation


# instance fields
.field private _berEncodeRecipientSet:Z

.field private _bufferSize:I

.field private _originatorInfo:Ljava/lang/Object;

.field private _unprotectedAttributes:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_originatorInfo:Ljava/lang/Object;

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_unprotectedAttributes:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_originatorInfo:Ljava/lang/Object;

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_unprotectedAttributes:Ljava/lang/Object;

    return-void
.end method

.method private getVersion()Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_originatorInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_unprotectedAttributes:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_0
.end method

.method private open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/KeyGenerator;Ljava/security/Provider;)Ljava/io/OutputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p3}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-virtual {p3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v6}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->generateParameters(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v4

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    new-instance v5, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmyorg/bouncycastle/cms/RecipientInfoGenerator;

    :try_start_0
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->rand:Ljava/security/SecureRandom;

    invoke-interface {v9, v3, v0, p4}, Lmyorg/bouncycastle/cms/RecipientInfoGenerator;->generate(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Ljava/security/Provider;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v0, Lmyorg/bouncycastle/cms/CMSException;

    const-string v1, "key inappropriate for algorithm."

    invoke-direct {v0, v1, v7}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v7

    new-instance v0, Lmyorg/bouncycastle/cms/CMSException;

    const-string v1, "error making encrypted content."

    invoke-direct {v0, v1, v7}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/AlgorithmParameters;Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Ljava/security/Provider;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public open(Ljava/io/OutputStream;Ljava/lang/String;ILjava/security/Provider;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v1, p2, p4}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v0, p3, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/KeyGenerator;Ljava/security/Provider;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public open(Ljava/io/OutputStream;Ljava/lang/String;Ljava/security/Provider;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v1, p2, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createSymmetricKeyGenerator(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/KeyGenerator;Ljava/security/Provider;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method protected open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/AlgorithmParameters;Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Ljava/security/Provider;)Ljava/io/OutputStream;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    new-instance v5, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v5, p1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v2}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v6, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v12, 0x1

    invoke-direct {v6, v2, v3, v12}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->getVersion()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v6, v2}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-boolean v2, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/asn1/BERSet;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lmyorg/bouncycastle/asn1/BERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/BERSet;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    sget-object v2, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->getSymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v8

    const/4 v2, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;->rand:Ljava/security/SecureRandom;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v8, v2, v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    new-instance v7, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v7, v2}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7, v2}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    if-nez p4, :cond_0

    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->getAlgorithmIdentifier(Ljava/lang/String;Ljava/security/AlgorithmParameters;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_bufferSize:I

    invoke-static {v2, v3, v12, v13}, Lmyorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v11

    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v11, v8}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v2, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;-><init>(Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;Ljavax/crypto/CipherOutputStream;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v2

    :cond_1
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "key invalid in message."

    invoke-direct {v2, v3, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v9

    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "required padding not supported."

    invoke-direct {v2, v3, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v9

    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "algorithm parameters invalid."

    invoke-direct {v2, v3, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_3
    move-exception v9

    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "exception decoding algorithm parameters."

    invoke-direct {v2, v3, v9}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
