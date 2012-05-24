.class public Lmyorg/bouncycastle/asn1/pkcs/PBES2Parameters;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PBES2Parameters.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private scheme:Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Parameters;->func:Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Parameters;->scheme:Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
