.class public Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
.super Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "KeyDerivationFunc.java"


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method
