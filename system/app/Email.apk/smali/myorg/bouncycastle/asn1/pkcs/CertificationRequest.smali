.class public Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertificationRequest.java"


# instance fields
.field protected reqInfo:Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

.field protected sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected sigBits:Lmyorg/bouncycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lmyorg/bouncycastle/asn1/DERBitString;

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->reqInfo:Lmyorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigAlgId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/CertificationRequest;->sigBits:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
