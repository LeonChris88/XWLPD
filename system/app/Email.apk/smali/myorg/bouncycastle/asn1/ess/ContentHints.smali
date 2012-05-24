.class public Lmyorg/bouncycastle/asn1/ess/ContentHints;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ContentHints.java"


# instance fields
.field private contentDescription:Lmyorg/bouncycastle/asn1/DERUTF8String;

.field private contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lmyorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/ContentHints;->contentDescription:Lmyorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ess/ContentHints;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
