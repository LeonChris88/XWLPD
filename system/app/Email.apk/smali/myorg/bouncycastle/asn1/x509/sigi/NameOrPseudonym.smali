.class public Lmyorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "NameOrPseudonym.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private givenName:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private pseudonym:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

.field private surname:Lmyorg/bouncycastle/asn1/x500/DirectoryString;


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->pseudonym:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->pseudonym:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->surname:Lmyorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->givenName:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_0
.end method
