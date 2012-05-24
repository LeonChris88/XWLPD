.class public Lmyorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "POPOSigningKeyInput.java"


# instance fields
.field private authInfo:Lmyorg/bouncycastle/asn1/ASN1Encodable;

.field private publicKey:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->authInfo:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->publicKey:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
