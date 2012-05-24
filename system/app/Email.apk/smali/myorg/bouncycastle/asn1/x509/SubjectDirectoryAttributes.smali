.class public Lmyorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SubjectDirectoryAttributes.java"


# instance fields
.field private attributes:Ljava/util/Vector;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;->attributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method
