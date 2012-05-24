.class public Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "IDEACBCPar.java"


# instance fields
.field iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lmyorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
