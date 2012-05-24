.class public Lmyorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CommitmentTypeQualifier.java"


# instance fields
.field private commitmentTypeIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private qualifier:Lmyorg/bouncycastle/asn1/DEREncodable;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
