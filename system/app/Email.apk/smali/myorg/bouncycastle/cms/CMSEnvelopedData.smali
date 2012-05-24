.class public Lmyorg/bouncycastle/cms/CMSEnvelopedData;
.super Ljava/lang/Object;
.source "CMSEnvelopedData.java"


# instance fields
.field contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

.field private encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field recipientInfoStore:Lmyorg/bouncycastle/cms/RecipientInformationStore;

.field private unprotectedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p1}, Lmyorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lmyorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedData;->contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->getEncryptedContentInfo()Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->getRecipientInfos()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v4, v0, v5, v6, v6}, Lmyorg/bouncycastle/cms/CMSEnvelopedHelper;->readRecipientInfos(Lmyorg/bouncycastle/asn1/ASN1Set;[BLmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/cms/RecipientInformationStore;

    invoke-direct {v4, v3}, Lmyorg/bouncycastle/cms/RecipientInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lmyorg/bouncycastle/cms/RecipientInformationStore;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cms/EnvelopedData;->getUnprotectedAttrs()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method


# virtual methods
.method public getRecipientInfos()Lmyorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lmyorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method
