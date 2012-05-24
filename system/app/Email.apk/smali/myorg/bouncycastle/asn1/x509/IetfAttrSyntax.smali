.class public Lmyorg/bouncycastle/asn1/x509/IetfAttrSyntax;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "IetfAttrSyntax.java"


# instance fields
.field policyAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

.field values:Ljava/util/Vector;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 6

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_0

    new-instance v3, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v2, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v3
.end method
