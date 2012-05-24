.class public Lmyorg/bouncycastle/asn1/ocsp/ServiceLocator;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ServiceLocator.java"


# instance fields
.field issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

.field locator:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/ServiceLocator;->issuer:Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/ServiceLocator;->locator:Lmyorg/bouncycastle/asn1/DERObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ocsp/ServiceLocator;->locator:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
