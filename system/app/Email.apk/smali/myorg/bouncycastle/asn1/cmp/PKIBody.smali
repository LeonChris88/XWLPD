.class public Lmyorg/bouncycastle/asn1/cmp/PKIBody;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIBody.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private body:Lmyorg/bouncycastle/asn1/ASN1Encodable;

.field private tagNo:I


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    iget v2, p0, Lmyorg/bouncycastle/asn1/cmp/PKIBody;->tagNo:I

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cmp/PKIBody;->body:Lmyorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method
