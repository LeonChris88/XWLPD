.class public Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private data:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public getEncryptedData()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->data:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
