.class public Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;
.super Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "PBES2Algorithms.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private scheme:Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    sget-object v4, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v4, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    :goto_0
    new-instance v4, Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v3}, Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-void

    :cond_0
    new-instance v3, Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-direct {v3, v1}, Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_0
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lmyorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method

.method public getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
