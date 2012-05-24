.class public Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.super Lmyorg/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$1;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$NullOutputStream;,
        Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;
    }
.end annotation


# instance fields
.field private _bufferSize:I

.field private _messageDigests:Ljava/util/List;

.field private _signerInfs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Ljava/security/SecureRandom;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    return-object v0
.end method

.method private static attachDigestsToOutputStream(Ljava/util/List;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4

    move-object v2, p1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    new-instance v3, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;

    invoke-direct {v3, v0}, Lmyorg/bouncycastle/cms/CMSSignedGenerator$DigOutputStream;-><init>(Ljava/security/MessageDigest;)V

    invoke-static {v2, v3}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private calculateVersion(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERInteger;
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_certs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_0

    move-object v6, v3

    check-cast v6, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-ne v7, v10, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-ne v7, v9, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v11}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    :goto_1
    return-object v7

    :cond_4
    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    if-eqz v7, :cond_6

    if-nez v4, :cond_6

    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_crls:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v11}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    :cond_9
    sget-object v7, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->DATA:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-direct {p0, v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->checkForVersion3(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    :cond_a
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v10}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1

    :cond_b
    new-instance v7, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v7, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_1
.end method

.method private checkForVersion3(Ljava/util/List;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v2}, Lmyorg/bouncycastle/cms/SignerInformation;->toSignerInfo()Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$NullOutputStream;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$NullOutputStream;-><init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$1;)V

    :cond_0
    return-object p0
.end method

.method private static getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {p1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;

    invoke-direct {v0, p0, p1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Ljava/security/Provider;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v5, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v5, p5}, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    new-instance v6, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;

    invoke-direct {v6, p6}, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    move-object/from16 v0, p7

    invoke-virtual {v1, v11, v0}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v9

    iget-object v12, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    new-instance v1, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;

    invoke-static {p2}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSignerIdentifier(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;-><init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/security/PrivateKey;Lmyorg/bouncycastle/asn1/cms/SignerIdentifier;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/MessageDigest;Ljava/security/Provider;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Ljava/security/Provider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v4, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v4, p4}, Lmyorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    new-instance v5, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;

    invoke-direct {v5, p5}, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;-><init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V

    return-void
.end method

.method public addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getEncOID(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;Ljava/security/Provider;)V

    return-void
.end method

.method public open(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/OutputStream;Ljava/lang/String;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v5, p1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v6, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v6, v1, v2, v4}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->calculateVersion(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    invoke-virtual {v6, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v9, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/cms/SignerInformation;

    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v12}, Lmyorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->fixAlgID(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signerInfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;

    invoke-virtual {v12}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$SignerInf;->getDigestAlgorithmID()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v9, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v9}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    new-instance v7, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v7, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    if-eqz p3, :cond_2

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v13, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    invoke-static {v1, v2, v4, v13}, Lmyorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v10

    :goto_2
    move-object/from16 v0, p4

    invoke-static {v0, v10}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v8

    iget-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_messageDigests:Ljava/util/List;

    invoke-static {v1, v8}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->attachDigestsToOutputStream(Ljava/util/List;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    new-instance v1, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;

    move-object v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;-><init>(Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/io/OutputStream;Ljava/lang/String;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->DATA:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
