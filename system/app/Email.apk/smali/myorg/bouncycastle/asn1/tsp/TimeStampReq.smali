.class public Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "TimeStampReq.java"


# instance fields
.field certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

.field extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field messageImprint:Lmyorg/bouncycastle/asn1/tsp/MessageImprint;

.field nonce:Lmyorg/bouncycastle/asn1/DERInteger;

.field tsaPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field version:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lmyorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_3

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v3, v3, v2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_3
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
