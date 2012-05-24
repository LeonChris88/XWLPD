.class public Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;
.super Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "EncryptionScheme.java"


# instance fields
.field obj:Lmyorg/bouncycastle/asn1/DERObject;

.field objectId:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObject;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;->objectId:Lmyorg/bouncycastle/asn1/DERObject;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObject;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;->obj:Lmyorg/bouncycastle/asn1/DERObject;

    return-void
.end method


# virtual methods
.method public getDERObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;->objectId:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/EncryptionScheme;->obj:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
