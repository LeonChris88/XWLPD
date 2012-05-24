.class Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "KeyTransRecipientInfoGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private recipientPublicKey:Ljava/security/PublicKey;

.field private recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

.field private subjectKeyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;Ljava/security/Provider;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v8, 0x1

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    sget-object v6, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->createAsymmetricCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v6, 0x3

    :try_start_0
    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v3, v6, v7, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v6, :cond_0

    new-instance v2, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v6

    iget-object v7, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V

    new-instance v5, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-direct {v5, v2}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lmyorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    :goto_1
    new-instance v6, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v7, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v7, v5, v4, v1}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V

    return-object v6

    :catch_0
    move-exception v0

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v3, v8, v6, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-direct {v1, v6}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v3, v8, v6, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-direct {v1, v6}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v3, v8, v6, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    invoke-direct {v1, v6}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    :cond_0
    new-instance v5, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;

    iget-object v6, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->subjectKeyIdentifier:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_1
.end method

.method setRecipientCert(Ljava/security/cert/X509Certificate;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lmyorg/bouncycastle/cms/CMSUtils;->getTBSCertificateStructure(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientPublicKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->recipientTBSCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;->info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t extract TBS structure from this cert"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
