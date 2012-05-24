.class public Lmyorg/bouncycastle/asn1/crmf/SinglePubInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SinglePubInfo.java"


# instance fields
.field private pubLocation:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field private pubMethod:Lmyorg/bouncycastle/asn1/DERInteger;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubMethod:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/SinglePubInfo;->pubLocation:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
