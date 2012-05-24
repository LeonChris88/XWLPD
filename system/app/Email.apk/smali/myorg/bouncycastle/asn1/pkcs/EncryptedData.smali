.class public Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "EncryptedData.java"


# instance fields
.field data:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sequence not version 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->data:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v1, v2, v2, p3}, Lmyorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->data:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method


# virtual methods
.method public getContent()Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .locals 3

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->data:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->data:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEncryptionAlgorithm()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->data:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptedData;->data:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/BERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
