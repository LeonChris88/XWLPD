.class public Lmyorg/bouncycastle/cms/KEKRecipientInformation;
.super Lmyorg/bouncycastle/cms/RecipientInformation;
.source "KEKRecipientInformation.java"


# instance fields
.field private info:Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V
    .locals 7

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKeyEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/cms/RecipientInformation;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/io/InputStream;)V

    iput-object p1, p0, Lmyorg/bouncycastle/cms/KEKRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    new-instance v0, Lmyorg/bouncycastle/cms/RecipientId;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/RecipientId;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getKekid()Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;

    move-result-object v6

    iget-object v0, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->rid:Lmyorg/bouncycastle/cms/RecipientId;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cms/KEKIdentifier;->getKeyIdentifier()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/RecipientId;->setKeyIdentifier([B)V

    return-void
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

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/cms/KEKRecipientInformation;->getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentStream(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v6, p0, Lmyorg/bouncycastle/cms/KEKRecipientInformation;->info:Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getEncryptedKey()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    iget-object v6, p0, Lmyorg/bouncycastle/cms/RecipientInformation;->keyEncAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v6, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/KEKRecipientInformation;->getActiveAlgID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v1, v6}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lmyorg/bouncycastle/cms/KEKRecipientInformation;->getContentFromSessionKey(Ljava/security/Key;Ljava/security/Provider;)Lmyorg/bouncycastle/cms/CMSTypedStream;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSException;

    const-string v7, "can\'t find algorithm."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_1
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSException;

    const-string v7, "key invalid in message."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_2
    move-exception v2

    new-instance v6, Lmyorg/bouncycastle/cms/CMSException;

    const-string v7, "required padding not supported."

    invoke-direct {v6, v7, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method
