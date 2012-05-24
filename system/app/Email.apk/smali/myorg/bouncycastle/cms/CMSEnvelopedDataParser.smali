.class public Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;
.super Lmyorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSEnvelopedDataParser.java"


# instance fields
.field private _attrNotRead:Z

.field private _encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field _envelopedData:Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;

.field _recipientInfoStore:Lmyorg/bouncycastle/cms/RecipientInformationStore;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_attrNotRead:Z

    new-instance v7, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v7, v6}, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v7, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_envelopedData:Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_envelopedData:Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getRecipientInfos()Lmyorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/ASN1SetParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_envelopedData:Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getEncryptedContentInfo()Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getContentEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    iput-object v6, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getEncryptedContent(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v6}, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iget-object v7, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v6, v1, v7, v9, v9}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->readRecipientInfos(Ljava/util/Iterator;Ljava/io/InputStream;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/util/List;

    move-result-object v4

    new-instance v6, Lmyorg/bouncycastle/cms/RecipientInformationStore;

    invoke-direct {v6, v4}, Lmyorg/bouncycastle/cms/RecipientInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_recipientInfoStore:Lmyorg/bouncycastle/cms/RecipientInformationStore;

    return-void
.end method


# virtual methods
.method public getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataParser;->_recipientInfoStore:Lmyorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method
