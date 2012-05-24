.class public Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;
.super Ljava/lang/Object;
.source "EncryptedContentInfoParser.java"


# instance fields
.field private _contentEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private _contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private _encryptedContent:Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    return-void
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedContent(I)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
