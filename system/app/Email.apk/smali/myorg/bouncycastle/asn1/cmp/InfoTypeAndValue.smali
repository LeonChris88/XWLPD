.class public Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "InfoTypeAndValue.java"


# instance fields
.field private infoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private infoValue:Lmyorg/bouncycastle/asn1/ASN1Encodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
