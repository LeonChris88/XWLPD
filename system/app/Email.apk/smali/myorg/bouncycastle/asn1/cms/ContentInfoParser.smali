.class public Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
.super Ljava/lang/Object;
.source "ContentInfoParser.java"


# instance fields
.field private content:Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

.field private contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


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

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    return-void
.end method


# virtual methods
.method public getContent(I)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->content:Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
