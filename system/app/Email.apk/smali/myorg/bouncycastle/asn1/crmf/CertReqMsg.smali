.class public Lmyorg/bouncycastle/asn1/crmf/CertReqMsg;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "CertReqMsg.java"


# instance fields
.field private certReq:Lmyorg/bouncycastle/asn1/crmf/CertRequest;

.field private pop:Lmyorg/bouncycastle/asn1/crmf/ProofOfPossession;

.field private regInfo:Lmyorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertReqMsg;->certReq:Lmyorg/bouncycastle/asn1/crmf/CertRequest;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertReqMsg;->pop:Lmyorg/bouncycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/crmf/CertReqMsg;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/crmf/CertReqMsg;->regInfo:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/crmf/CertReqMsg;->addOptional(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
