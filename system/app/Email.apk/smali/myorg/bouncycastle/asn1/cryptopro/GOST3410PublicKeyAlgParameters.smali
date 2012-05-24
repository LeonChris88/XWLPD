.class public Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "GOST3410PublicKeyAlgParameters.java"


# instance fields
.field private digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p3, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method


# virtual methods
.method public getDigestParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getEncryptionParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->publicKeyParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->digestParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->encryptionParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
