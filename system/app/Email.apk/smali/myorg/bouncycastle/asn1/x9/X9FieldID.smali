.class public Lmyorg/bouncycastle/asn1/x9/X9FieldID;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X9FieldID.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private id:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private parameters:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->characteristic_two_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->id:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    if-nez p3, :cond_0

    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->tpBasis:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :goto_0
    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->parameters:Lmyorg/bouncycastle/asn1/DERObject;

    return-void

    :cond_0
    sget-object v2, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->ppBasis:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p3}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p4}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    sget-object v0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->prime_field:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->id:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->parameters:Lmyorg/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->id:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObject;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->parameters:Lmyorg/bouncycastle/asn1/DERObject;

    return-void
.end method


# virtual methods
.method public getIdentifier()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->id:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->parameters:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->id:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x9/X9FieldID;->parameters:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
