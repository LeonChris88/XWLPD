.class public Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "ECPrivateKeyStructure.java"


# instance fields
.field private seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/DERBitString;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/DERBitString;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-static {p1}, Lmyorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, v4}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v0}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    if-eqz p3, :cond_0

    new-instance v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v3, p3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v4, v4, p2}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method private getObjectInTag(I)Lmyorg/bouncycastle/asn1/ASN1Object;
    .locals 4

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v3, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Object;

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/math/BigInteger;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public getPublicKey()Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getObjectInTag(I)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
