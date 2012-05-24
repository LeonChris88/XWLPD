.class public Lmyorg/bouncycastle/asn1/pkcs/SafeBag;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SafeBag.java"


# instance fields
.field bagAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

.field bagId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field bagValue:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObject;Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p2, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lmyorg/bouncycastle/asn1/DERObject;

    iput-object p3, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method


# virtual methods
.method public getBagAttributes()Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getBagId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getBagValue()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagValue:Lmyorg/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/pkcs/SafeBag;->bagAttributes:Lmyorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
