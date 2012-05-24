.class public Lmyorg/bouncycastle/asn1/x9/OtherInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "OtherInfo.java"


# instance fields
.field private keyInfo:Lmyorg/bouncycastle/asn1/x9/KeySpecificInfo;

.field private partyAInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private suppPubInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lmyorg/bouncycastle/asn1/x9/KeySpecificInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
