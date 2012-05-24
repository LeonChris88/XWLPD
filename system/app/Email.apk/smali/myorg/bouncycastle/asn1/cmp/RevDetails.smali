.class public Lmyorg/bouncycastle/asn1/cmp/RevDetails;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RevDetails.java"


# instance fields
.field private certDetails:Lmyorg/bouncycastle/asn1/crmf/CertTemplate;

.field private crlEntryDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevDetails;->certDetails:Lmyorg/bouncycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
