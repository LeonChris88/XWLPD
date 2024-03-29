.class public Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "KeyRecRepContent.java"


# instance fields
.field private caCerts:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private keyPairHist:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private newSigCert:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private status:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;


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

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;->status:Lmyorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;->newSigCert:Lmyorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;->caCerts:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;->keyPairHist:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/asn1/cmp/KeyRecRepContent;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
