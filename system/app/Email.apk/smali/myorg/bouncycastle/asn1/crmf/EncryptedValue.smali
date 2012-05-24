.class public Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EncryptedValue.java"


# instance fields
.field private encSymmKey:Lmyorg/bouncycastle/asn1/DERBitString;

.field private encValue:Lmyorg/bouncycastle/asn1/DERBitString;

.field private intendedAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private keyAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private symmAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private valueHint:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->symmAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->keyAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->valueHint:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/EncryptedValue;->encValue:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
