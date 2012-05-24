.class public Lmyorg/bouncycastle/asn1/cmp/PKIHeader;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIHeader.java"


# instance fields
.field private freeText:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private generalInfo:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private messageTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

.field private protectionAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private pvno:Lmyorg/bouncycastle/asn1/DERInteger;

.field private recipKID:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private recipNonce:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private recipient:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field private sender:Lmyorg/bouncycastle/asn1/x509/GeneralName;

.field private senderKID:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private senderNonce:Lmyorg/bouncycastle/asn1/ASN1OctetString;

.field private transactionID:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

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

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->pvno:Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->sender:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->recipient:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->messageTime:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->protectionAlg:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->senderKID:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->recipKID:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->transactionID:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->senderNonce:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->recipNonce:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->freeText:Lmyorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->generalInfo:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/PKIHeader;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
