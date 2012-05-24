.class public Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;
.super Ljava/lang/Object;
.source "AuthenticatedDataParser.java"


# instance fields
.field private nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

.field private originatorInfoCalled:Z

.field private seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

.field private version:Lmyorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    return-void
.end method


# virtual methods
.method public getEnapsulatedContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    new-instance v1, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1SequenceParser;)V

    :cond_1
    return-object v1
.end method

.method public getMacAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getOriginatorInfo()Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public getRecipientInfos()Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lmyorg/bouncycastle/asn1/cms/OriginatorInfo;

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lmyorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1SetParser;

    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method
